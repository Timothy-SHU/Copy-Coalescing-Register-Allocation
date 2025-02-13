; ModuleID = 'blender/source/blender/nodes/intern/node_socket.c'
source_filename = "blender/source/blender/nodes/intern/node_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.bNodeSocketValueInt = type { i32, i32, i32, i32 }
%struct.bNodeSocketValueVector = type { i32, [3 x float], float, float }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.bNodeSocketValueString = type { i32, i32, [1024 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"node socket value float\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"node socket value int\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"node socket value bool\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"node socket value vector\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"node socket value color\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"node socket value string\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"node socket C type\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NodeSocketVirtual\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 2
  %10 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %11 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = trunc i32 %12 to i16
  %16 = or i16 %14, %15
  store i16 %16, ptr %13, align 2, !tbaa !43
  %17 = load i32, ptr %2, align 8, !tbaa !34
  switch i32 %17, label %78 [
    i32 0, label %18
    i32 6, label %27
    i32 4, label %42
    i32 1, label %49
    i32 2, label %64
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %22 = load float, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %20, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !49
  %24 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %25 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %20, i64 0, i32 2
  %26 = load <2 x float>, ptr %24, align 8, !tbaa !51
  store <2 x float> %26, ptr %25, align 4, !tbaa !51
  br label %78

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %31 = load float, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !52
  %35 = insertelement <2 x float> poison, float %31, i64 0
  %36 = insertelement <2 x float> %35, float %34, i64 1
  %37 = fptosi <2 x float> %36 to <2 x i32>
  store <2 x i32> %37, ptr %32, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 8
  %39 = load float, ptr %38, align 4, !tbaa !54
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %29, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !55
  br label %78

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %46 = load float, ptr %45, align 8, !tbaa !48
  %47 = fptosi float %46 to i32
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %44, align 1, !tbaa !57
  br label %78

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %53 = load float, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %51, i64 0, i32 1
  store float %53, ptr %54, align 4, !tbaa !51
  %55 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 4
  %56 = load float, ptr %55, align 4, !tbaa !59
  %57 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %51, i64 0, i32 1, i64 1
  store float %56, ptr %57, align 4, !tbaa !51
  %58 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 5
  %59 = load float, ptr %58, align 8, !tbaa !60
  %60 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %51, i64 0, i32 1, i64 2
  store float %59, ptr %60, align 4, !tbaa !51
  %61 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %62 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %51, i64 0, i32 2
  %63 = load <2 x float>, ptr %61, align 8, !tbaa !51
  store <2 x float> %63, ptr %62, align 4, !tbaa !51
  br label %78

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %68 = load float, ptr %67, align 8, !tbaa !48
  store float %68, ptr %66, align 4, !tbaa !51
  %69 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 4
  %70 = load float, ptr %69, align 4, !tbaa !59
  %71 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 1
  store float %70, ptr %71, align 4, !tbaa !51
  %72 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 5
  %73 = load float, ptr %72, align 8, !tbaa !60
  %74 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 2
  store float %73, ptr %74, align 4, !tbaa !51
  %75 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 6
  %76 = load float, ptr %75, align 4, !tbaa !61
  %77 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 3
  store float %76, ptr %77, align 4, !tbaa !51
  br label %78

78:                                               ; preds = %4, %64, %49, %42, %27, %18
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_verify_socket_templates(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !34
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %8) #6
  br label %15

15:                                               ; preds = %13, %10, %6
  %16 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8, !tbaa !34
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %23, ptr noundef nonnull %17) #6
  br label %24

24:                                               ; preds = %15, %19, %22, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !70 {
  %6 = load i32, ptr %4, align 8, !tbaa !34
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %5 ]
  %10 = tail call fastcc ptr @verify_socket_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9) #6
  %11 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %9, i64 0, i32 11
  store ptr %10, ptr %11, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %9, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %8, !llvm.loop !72

15:                                               ; preds = %8, %5
  %16 = load ptr, ptr %3, align 8, !tbaa !74
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %18, !llvm.loop !76

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 8, !tbaa !74
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %4, align 8, !tbaa !34
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %45, label %31

28:                                               ; preds = %15, %22
  %29 = load i32, ptr %4, align 8, !tbaa !34
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %45, label %38

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %35, %31 ], [ %4, %25 ]
  %33 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef nonnull %23, ptr noundef %34) #5
  %35 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %32, i64 1
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %45, label %31, !llvm.loop !77

38:                                               ; preds = %28, %38
  %39 = phi ptr [ %42, %38 ], [ %4, %28 ]
  %40 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %41) #5
  %42 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %39, i64 1
  %43 = load i32, ptr %42, align 8, !tbaa !34
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %38, !llvm.loop !78

45:                                               ; preds = %31, %38, %25, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_init_default_value(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !82
  switch i32 %11, label %40 [
    i32 0, label %12
    i32 6, label %17
    i32 4, label %23
    i32 1, label %26
    i32 2, label %31
    i32 7, label %34
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %14 = tail call ptr %13(i64 noundef 16, ptr noundef nonnull @.str) #5
  store i32 %5, ptr %14, align 4, !tbaa !84
  %15 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 1
  store <2 x float> <float 0.000000e+00, float 0xC7EFFFFFE0000000>, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %16, align 4, !tbaa !85
  br label %38

17:                                               ; preds = %9
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %19 = tail call ptr %18(i64 noundef 16, ptr noundef nonnull @.str.1) #5
  store i32 %5, ptr %19, align 4, !tbaa !86
  %20 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %19, i64 0, i32 1
  store i32 0, ptr %20, align 4, !tbaa !87
  %21 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %19, i64 0, i32 2
  store i32 -2147483648, ptr %21, align 4, !tbaa !88
  %22 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %19, i64 0, i32 3
  store i32 2147483647, ptr %22, align 4, !tbaa !55
  br label %38

23:                                               ; preds = %9
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %25 = tail call ptr %24(i64 noundef 4, ptr noundef nonnull @.str.2) #5
  store i8 0, ptr %25, align 1, !tbaa !57
  br label %38

26:                                               ; preds = %9
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %28 = tail call ptr %27(i64 noundef 24, ptr noundef nonnull @.str.3) #5
  store i32 %5, ptr %28, align 4, !tbaa !89
  %29 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %28, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29) #6
  %30 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %28, i64 0, i32 2
  store <2 x float> <float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr %30, align 4, !tbaa !51
  br label %38

31:                                               ; preds = %9
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %33 = tail call ptr %32(i64 noundef 16, ptr noundef nonnull @.str.5) #5
  tail call fastcc void @copy_v4_v4(ptr noundef %33) #6
  br label %38

34:                                               ; preds = %9
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %36 = tail call ptr %35(i64 noundef 1032, ptr noundef nonnull @.str.6) #5
  store i32 %5, ptr %36, align 4, !tbaa !91
  %37 = getelementptr inbounds %struct.bNodeSocketValueString, ptr %36, i64 0, i32 2
  store i8 0, ptr %37, align 4, !tbaa !93
  br label %38

38:                                               ; preds = %34, %31, %26, %23, %17, %12
  %39 = phi ptr [ %14, %12 ], [ %19, %17 ], [ %25, %23 ], [ %28, %26 ], [ %33, %31 ], [ %36, %34 ]
  store ptr %39, ptr %6, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %38, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !94 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !51
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !95 {
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_copy_default_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %4 = load i16, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  tail call void @node_socket_init_default_value(ptr noundef nonnull %0) #6
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.bNodeSocketType, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !82
  switch i32 %16, label %42 [
    i32 0, label %17
    i32 6, label %21
    i32 4, label %25
    i32 1, label %30
    i32 2, label %34
    i32 7, label %38
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !97
  br label %42

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !98
  br label %42

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = load ptr, ptr %9, align 8, !tbaa !47
  %29 = load i32, ptr %28, align 1
  store i32 %29, ptr %27, align 1
  br label %42

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %32, ptr noundef nonnull align 4 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !99
  br label %42

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !100
  br label %42

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %40, ptr noundef nonnull align 4 dereferenceable(1032) %41, i64 1032, i1 false), !tbaa.struct !101
  br label %42

42:                                               ; preds = %12, %38, %34, %30, %25, %21, %17
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !43
  %45 = and i16 %44, 128
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 8
  %47 = load i16, ptr %46, align 2, !tbaa !43
  %48 = or i16 %47, %45
  store i16 %48, ptr %46, align 2, !tbaa !43
  br label %49

49:                                               ; preds = %8, %2, %42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_standard_node_socket_types() local_unnamed_addr #0 {
  %1 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %1) #5
  %2 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 13) #6
  tail call void @nodeRegisterSocketType(ptr noundef %2) #5
  %3 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 14) #6
  tail call void @nodeRegisterSocketType(ptr noundef %3) #5
  %4 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 15) #6
  tail call void @nodeRegisterSocketType(ptr noundef %4) #5
  %5 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 327696) #6
  tail call void @nodeRegisterSocketType(ptr noundef %5) #5
  %6 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 0, i32 noundef 393233) #6
  tail call void @nodeRegisterSocketType(ptr noundef %6) #5
  %7 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 6, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %7) #5
  %8 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 6, i32 noundef 13) #6
  tail call void @nodeRegisterSocketType(ptr noundef %8) #5
  %9 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 6, i32 noundef 14) #6
  tail call void @nodeRegisterSocketType(ptr noundef %9) #5
  %10 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 6, i32 noundef 15) #6
  tail call void @nodeRegisterSocketType(ptr noundef %10) #5
  %11 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 4, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %11) #5
  %12 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %12) #5
  %13 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 65557) #6
  tail call void @nodeRegisterSocketType(ptr noundef %13) #5
  %14 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 22) #6
  tail call void @nodeRegisterSocketType(ptr noundef %14) #5
  %15 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 458775) #6
  tail call void @nodeRegisterSocketType(ptr noundef %15) #5
  %16 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 524312) #6
  tail call void @nodeRegisterSocketType(ptr noundef %16) #5
  %17 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 327706) #6
  tail call void @nodeRegisterSocketType(ptr noundef %17) #5
  %18 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 1, i32 noundef 29) #6
  tail call void @nodeRegisterSocketType(ptr noundef %18) #5
  %19 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 2, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %19) #5
  %20 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 7, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %20) #5
  %21 = tail call fastcc ptr @make_standard_socket_type(i32 noundef 3, i32 noundef 0) #6
  tail call void @nodeRegisterSocketType(ptr noundef %21) #5
  %22 = tail call fastcc ptr @make_socket_type_virtual() #6
  tail call void @nodeRegisterSocketType(ptr noundef %22) #5
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterSocketType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_standard_socket_type(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = tail call ptr @nodeStaticSocketType(i32 noundef %0, i32 noundef %1) #5
  %4 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef %0, i32 noundef %1) #5
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %6 = tail call ptr %5(i64 noundef 200, ptr noundef nonnull @.str.7) #5
  %7 = tail call ptr @BLI_strncpy(ptr noundef %6, ptr noundef %3, i64 noundef 64) #5
  %8 = tail call ptr @RNA_struct_find(ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 9, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !103
  tail call void @RNA_struct_blender_type_set(ptr noundef %8, ptr noundef %6) #5
  %10 = tail call ptr @RNA_struct_find(ptr noundef %4) #5
  %11 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 10, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !104
  tail call void @RNA_struct_blender_type_set(ptr noundef %10, ptr noundef %6) #5
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 11
  store i32 %0, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 12
  store i32 %1, ptr %13, align 4, !tbaa !80
  tail call void @ED_init_standard_node_socket_type(ptr noundef %6) #5
  %14 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %14, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %15, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %16, align 8, !tbaa !107
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_socket_type_virtual() unnamed_addr #0 !PGOFuncName !108 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %2 = tail call ptr %1(i64 noundef 200, ptr noundef nonnull @.str.7) #5
  %3 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull @.str.8, i64 noundef 64) #5
  %4 = tail call ptr @RNA_struct_find(ptr noundef nonnull @.str.8) #5
  %5 = getelementptr inbounds %struct.bNodeSocketType, ptr %2, i64 0, i32 9, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !103
  tail call void @RNA_struct_blender_type_set(ptr noundef %4, ptr noundef %2) #5
  %6 = getelementptr inbounds %struct.bNodeSocketType, ptr %2, i64 0, i32 11
  store i32 -1, ptr %6, align 8, !tbaa !82
  tail call void @ED_init_node_socket_type_virtual(ptr noundef %2) #5
  ret ptr %2
}

; Function Attrs: optsize
declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @verify_socket_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !109 {
  %6 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %4, i64 0, i32 2
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %3, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 5
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 64) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !110

15:                                               ; preds = %11
  %16 = load i32, ptr %4, align 8, !tbaa !34
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 7
  store i16 %17, ptr %18, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %4, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !111
  %21 = icmp eq i32 %20, 0
  %22 = trunc i32 %20 to i16
  %23 = select i1 %21, i16 4095, i16 %22
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 9
  store i16 %23, ptr %24, align 4, !tbaa !112
  %25 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %4, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !43
  %29 = trunc i32 %26 to i16
  %30 = or i16 %28, %29
  store i16 %30, ptr %27, align 2, !tbaa !43
  tail call void @BLI_remlink(ptr noundef %3, ptr noundef nonnull %9) #5
  br label %33

31:                                               ; preds = %7
  %32 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %2) #6
  tail call void @BLI_remlink(ptr noundef %3, ptr noundef %32) #5
  br label %33

33:                                               ; preds = %31, %15
  %34 = phi ptr [ %9, %15 ], [ %32, %31 ]
  ret ptr %34
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeStaticSocketType(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nodeStaticSocketInterfaceType(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_init_standard_node_socket_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @standard_node_socket_interface_init_socket(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr nocapture noundef %3, ptr nocapture readnone %4) #0 !PGOFuncName !113 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  store i16 %10, ptr %11, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.bNodeSocketType, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !82
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  store i16 %16, ptr %17, align 8, !tbaa !96
  tail call void @node_socket_copy_default_value(ptr noundef %3, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @standard_node_socket_interface_from_socket(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !114 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  store i16 %9, ptr %10, align 8, !tbaa !96
  tail call void @node_socket_copy_default_value(ptr noundef %1, ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @standard_node_socket_interface_verify_socket(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef %3, ptr nocapture readnone %4) #0 !PGOFuncName !115 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !96
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.bNodeSocketType, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %43

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  tail call void @node_socket_init_default_value(ptr noundef nonnull %3) #6
  %19 = load ptr, ptr %9, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.bNodeSocketType, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !82
  switch i32 %21, label %43 [
    i32 0, label %22
    i32 6, label %29
    i32 1, label %36
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load ptr, ptr %15, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %24, i64 0, i32 2
  %28 = load <2 x float>, ptr %26, align 4, !tbaa !51
  store <2 x float> %28, ptr %27, align 4, !tbaa !51
  br label %43

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = load ptr, ptr %15, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %31, i64 0, i32 2
  %35 = load <2 x i32>, ptr %33, align 4, !tbaa !53
  store <2 x i32> %35, ptr %34, align 4, !tbaa !53
  br label %43

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = load ptr, ptr %15, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %38, i64 0, i32 2
  %42 = load <2 x float>, ptr %40, align 4, !tbaa !51
  store <2 x float> %42, ptr %41, align 4, !tbaa !51
  br label %43

43:                                               ; preds = %14, %5, %18, %36, %29, %22
  ret void
}

; Function Attrs: optsize
declare void @ED_init_node_socket_type_virtual(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"bNodeSocketTemplate", !36, i64 0, !36, i64 4, !37, i64 8, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 100, !40, i64 104, !37, i64 112}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!35, !36, i64 96}
!42 = !{!35, !36, i64 100}
!43 = !{!44, !45, i64 170}
!44 = !{!"bNodeSocket", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !37, i64 96, !40, i64 160, !45, i64 168, !45, i64 170, !45, i64 172, !45, i64 174, !40, i64 176, !37, i64 184, !39, i64 248, !39, i64 252, !40, i64 256, !45, i64 264, !45, i64 266, !36, i64 268, !40, i64 272, !36, i64 280, !36, i64 284, !40, i64 288, !40, i64 296, !46, i64 304}
!45 = !{!"short", !37, i64 0}
!46 = !{!"bNodeStack", !37, i64 0, !39, i64 16, !39, i64 20, !40, i64 24, !45, i64 32, !45, i64 34, !45, i64 36, !45, i64 38, !45, i64 40, !45, i64 42, !37, i64 44}
!47 = !{!44, !40, i64 256}
!48 = !{!35, !39, i64 72}
!49 = !{!50, !39, i64 4}
!50 = !{!"bNodeSocketValueFloat", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!51 = !{!39, !39, i64 0}
!52 = !{!35, !39, i64 88}
!53 = !{!36, !36, i64 0}
!54 = !{!35, !39, i64 92}
!55 = !{!56, !36, i64 12}
!56 = !{!"bNodeSocketValueInt", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!57 = !{!58, !37, i64 0}
!58 = !{!"bNodeSocketValueBoolean", !37, i64 0, !37, i64 1}
!59 = !{!35, !39, i64 76}
!60 = !{!35, !39, i64 80}
!61 = !{!35, !39, i64 84}
!62 = !{!63, !40, i64 32}
!63 = !{!"bNode", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !45, i64 172, !45, i64 174, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !45, i64 184, !45, i64 186, !37, i64 188, !64, i64 200, !64, i64 216, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !64, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !36, i64 308, !37, i64 312, !45, i64 376, !45, i64 378, !39, i64 380, !39, i64 384, !45, i64 388, !45, i64 390, !40, i64 392, !65, i64 400, !65, i64 416, !65, i64 432, !45, i64 448, !45, i64 450, !36, i64 452, !40, i64 456}
!64 = !{!"ListBase", !40, i64 0, !40, i64 8}
!65 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!66 = !{!67, !40, i64 448}
!67 = !{!"bNodeType", !40, i64 0, !40, i64 8, !45, i64 16, !37, i64 18, !36, i64 84, !37, i64 88, !37, i64 152, !36, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !45, i64 436, !45, i64 438, !45, i64 440, !40, i64 448, !40, i64 456, !37, i64 464, !40, i64 528, !40, i64 536, !40, i64 544, !40, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !68, i64 720}
!68 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!69 = !{!67, !40, i64 456}
!70 = !{!"node_socket.c:verify_socket_template_list"}
!71 = !{!35, !40, i64 104}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!64, !40, i64 0}
!75 = !{!44, !40, i64 0}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !73}
!78 = distinct !{!78, !73}
!79 = !{!44, !40, i64 176}
!80 = !{!81, !36, i64 196}
!81 = !{!"bNodeSocketType", !37, i64 0, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !68, i64 128, !68, i64 160, !36, i64 192, !36, i64 196}
!82 = !{!81, !36, i64 192}
!83 = !{!40, !40, i64 0}
!84 = !{!50, !36, i64 0}
!85 = !{!50, !39, i64 12}
!86 = !{!56, !36, i64 0}
!87 = !{!56, !36, i64 4}
!88 = !{!56, !36, i64 8}
!89 = !{!90, !36, i64 0}
!90 = !{!"bNodeSocketValueVector", !36, i64 0, !37, i64 4, !39, i64 16, !39, i64 20}
!91 = !{!92, !36, i64 0}
!92 = !{!"bNodeSocketValueString", !36, i64 0, !36, i64 4, !37, i64 8}
!93 = !{!37, !37, i64 0}
!94 = !{!"node_socket.c:copy_v3_v3"}
!95 = !{!"node_socket.c:copy_v4_v4"}
!96 = !{!44, !45, i64 168}
!97 = !{i64 0, i64 4, !53, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!98 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!99 = !{i64 0, i64 4, !53, i64 4, i64 12, !93, i64 16, i64 4, !51, i64 20, i64 4, !51}
!100 = !{i64 0, i64 16, !93}
!101 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 1024, !93}
!102 = !{!"node_socket.c:make_standard_socket_type"}
!103 = !{!81, !40, i64 136}
!104 = !{!81, !40, i64 168}
!105 = !{!81, !40, i64 104}
!106 = !{!81, !40, i64 120}
!107 = !{!81, !40, i64 112}
!108 = !{!"node_socket.c:make_socket_type_virtual"}
!109 = !{!"node_socket.c:verify_socket_template"}
!110 = distinct !{!110, !73}
!111 = !{!35, !36, i64 4}
!112 = !{!44, !45, i64 172}
!113 = !{!"node_socket.c:standard_node_socket_interface_init_socket"}
!114 = !{!"node_socket.c:standard_node_socket_interface_from_socket"}
!115 = !{!"node_socket.c:standard_node_socket_interface_verify_socket"}
