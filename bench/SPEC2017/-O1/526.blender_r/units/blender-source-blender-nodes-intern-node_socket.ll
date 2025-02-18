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

; Function Attrs: nounwind uwtable
define dso_local ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 2
  %10 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #4
  %11 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = trunc i32 %12 to i16
  %16 = or i16 %14, %15
  store i16 %16, ptr %13, align 2, !tbaa !43
  %17 = load i32, ptr %2, align 8, !tbaa !34
  switch i32 %17, label %84 [
    i32 0, label %18
    i32 6, label %30
    i32 4, label %45
    i32 1, label %52
    i32 2, label %70
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %22 = load float, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %20, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !49
  %24 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %25 = load float, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %20, i64 0, i32 2
  store float %25, ptr %26, align 4, !tbaa !52
  %27 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 8
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %20, i64 0, i32 3
  store float %28, ptr %29, align 4, !tbaa !54
  br label %84

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %34 = load float, ptr %33, align 8, !tbaa !48
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %32, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !55
  %37 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %38 = load float, ptr %37, align 8, !tbaa !51
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %32, i64 0, i32 2
  store i32 %39, ptr %40, align 4, !tbaa !57
  %41 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 8
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %32, i64 0, i32 3
  store i32 %43, ptr %44, align 4, !tbaa !58
  br label %84

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %49 = load float, ptr %48, align 8, !tbaa !48
  %50 = fptosi float %49 to i32
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %47, align 1, !tbaa !59
  br label %84

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %56 = load float, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %54, i64 0, i32 1
  store float %56, ptr %57, align 4, !tbaa !61
  %58 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 4
  %59 = load float, ptr %58, align 4, !tbaa !62
  %60 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %54, i64 0, i32 1, i64 1
  store float %59, ptr %60, align 4, !tbaa !61
  %61 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 5
  %62 = load float, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %54, i64 0, i32 1, i64 2
  store float %62, ptr %63, align 4, !tbaa !61
  %64 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 7
  %65 = load float, ptr %64, align 8, !tbaa !51
  %66 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %54, i64 0, i32 2
  store float %65, ptr %66, align 4, !tbaa !64
  %67 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 8
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %54, i64 0, i32 3
  store float %68, ptr %69, align 4, !tbaa !66
  br label %84

70:                                               ; preds = %4
  %71 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 3
  %74 = load float, ptr %73, align 8, !tbaa !48
  store float %74, ptr %72, align 4, !tbaa !61
  %75 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 4
  %76 = load float, ptr %75, align 4, !tbaa !62
  %77 = getelementptr inbounds [4 x float], ptr %72, i64 0, i64 1
  store float %76, ptr %77, align 4, !tbaa !61
  %78 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 5
  %79 = load float, ptr %78, align 8, !tbaa !63
  %80 = getelementptr inbounds [4 x float], ptr %72, i64 0, i64 2
  store float %79, ptr %80, align 4, !tbaa !61
  %81 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %2, i64 0, i32 6
  %82 = load float, ptr %81, align 4, !tbaa !67
  %83 = getelementptr inbounds [4 x float], ptr %72, i64 0, i64 3
  store float %82, ptr %83, align 4, !tbaa !61
  br label %84

84:                                               ; preds = %4, %70, %52, %45, %30, %18
  ret ptr %10
}

declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @node_verify_socket_templates(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !34
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %8)
  br label %15

15:                                               ; preds = %13, %10, %6
  %16 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8, !tbaa !34
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %23, ptr noundef nonnull %17)
  br label %24

24:                                               ; preds = %15, %19, %22, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @verify_socket_template_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr %4, align 8, !tbaa !34
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %43, label %8

8:                                                ; preds = %5, %37
  %9 = phi i32 [ %41, %37 ], [ %6, %5 ]
  %10 = phi ptr [ %40, %37 ], [ %4, %5 ]
  %11 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 2
  br label %12

12:                                               ; preds = %8, %16
  %13 = phi ptr [ %14, %16 ], [ %3, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 5
  %18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %11, i64 noundef 64) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !77

20:                                               ; preds = %16
  %21 = trunc i32 %9 to i16
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 7
  store i16 %21, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !81
  %25 = icmp eq i32 %24, 0
  %26 = trunc i32 %24 to i16
  %27 = select i1 %25, i16 4095, i16 %26
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 9
  store i16 %27, ptr %28, align 4, !tbaa !82
  %29 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !42
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !43
  %33 = trunc i32 %30 to i16
  %34 = or i16 %32, %33
  store i16 %34, ptr %31, align 2, !tbaa !43
  tail call void @BLI_remlink(ptr noundef %3, ptr noundef nonnull %14) #4
  br label %37

35:                                               ; preds = %12
  %36 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %2)
  tail call void @BLI_remlink(ptr noundef %3, ptr noundef %36) #4
  br label %37

37:                                               ; preds = %20, %35
  %38 = phi ptr [ %14, %20 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 11
  store ptr %38, ptr %39, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 1
  %41 = load i32, ptr %40, align 8, !tbaa !34
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %8, !llvm.loop !84

43:                                               ; preds = %37, %5
  %44 = load ptr, ptr %3, align 8, !tbaa !85
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %44, %43 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %47) #4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %46, !llvm.loop !87

50:                                               ; preds = %46, %43
  %51 = load ptr, ptr %3, align 8, !tbaa !85
  %52 = icmp eq ptr %51, null
  %53 = load i32, ptr %4, align 8, !tbaa !34
  %54 = icmp eq i32 %53, -1
  br i1 %52, label %56, label %55

55:                                               ; preds = %50
  br i1 %54, label %71, label %57

56:                                               ; preds = %50
  br i1 %54, label %71, label %64

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %61, %57 ], [ %4, %55 ]
  %59 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %58, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef %60) #4
  %61 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %58, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !34
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %71, label %57, !llvm.loop !88

64:                                               ; preds = %56, %64
  %65 = phi ptr [ %68, %64 ], [ %4, %56 ]
  %66 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %65, i64 0, i32 11
  %67 = load ptr, ptr %66, align 8, !tbaa !83
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %67) #4
  %68 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %65, i64 1
  %69 = load i32, ptr %68, align 8, !tbaa !34
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %64, !llvm.loop !89

71:                                               ; preds = %57, %64, %55, %56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_init_default_value(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !91
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !93
  switch i32 %11, label %47 [
    i32 0, label %12
    i32 6, label %18
    i32 4, label %24
    i32 1, label %27
    i32 2, label %35
    i32 7, label %41
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %14 = tail call ptr %13(i64 noundef 16, ptr noundef nonnull @.str) #4
  store i32 %5, ptr %14, align 4, !tbaa !94
  %15 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 2
  store float 0xC7EFFFFFE0000000, ptr %16, align 4, !tbaa !52
  %17 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %17, align 4, !tbaa !54
  br label %45

18:                                               ; preds = %9
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %20 = tail call ptr %19(i64 noundef 16, ptr noundef nonnull @.str.1) #4
  store i32 %5, ptr %20, align 4, !tbaa !95
  %21 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %20, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %20, i64 0, i32 2
  store i32 -2147483648, ptr %22, align 4, !tbaa !57
  %23 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %20, i64 0, i32 3
  store i32 2147483647, ptr %23, align 4, !tbaa !58
  br label %45

24:                                               ; preds = %9
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %26 = tail call ptr %25(i64 noundef 4, ptr noundef nonnull @.str.2) #4
  store i8 0, ptr %26, align 1, !tbaa !59
  br label %45

27:                                               ; preds = %9
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %29 = tail call ptr %28(i64 noundef 24, ptr noundef nonnull @.str.3) #4
  store i32 %5, ptr %29, align 4, !tbaa !96
  %30 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %29, i64 0, i32 1
  store float 0.000000e+00, ptr %30, align 4, !tbaa !61
  %31 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %29, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !61
  %32 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %29, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %32, align 4, !tbaa !61
  %33 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %29, i64 0, i32 2
  store float 0xC7EFFFFFE0000000, ptr %33, align 4, !tbaa !64
  %34 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %29, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %34, align 4, !tbaa !66
  br label %45

35:                                               ; preds = %9
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %37 = tail call ptr %36(i64 noundef 16, ptr noundef nonnull @.str.5) #4
  store float 0.000000e+00, ptr %37, align 4, !tbaa !61
  %38 = getelementptr inbounds float, ptr %37, i64 1
  store float 0.000000e+00, ptr %38, align 4, !tbaa !61
  %39 = getelementptr inbounds float, ptr %37, i64 2
  store float 0.000000e+00, ptr %39, align 4, !tbaa !61
  %40 = getelementptr inbounds float, ptr %37, i64 3
  store float 1.000000e+00, ptr %40, align 4, !tbaa !61
  br label %45

41:                                               ; preds = %9
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %43 = tail call ptr %42(i64 noundef 1032, ptr noundef nonnull @.str.6) #4
  store i32 %5, ptr %43, align 4, !tbaa !97
  %44 = getelementptr inbounds %struct.bNodeSocketValueString, ptr %43, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !99
  br label %45

45:                                               ; preds = %41, %35, %27, %24, %18, %12
  %46 = phi ptr [ %14, %12 ], [ %20, %18 ], [ %26, %24 ], [ %29, %27 ], [ %37, %35 ], [ %43, %41 ]
  store ptr %46, ptr %6, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %45, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_copy_default_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %4 = load i16, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !80
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  tail call void @node_socket_init_default_value(ptr noundef %0)
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.bNodeSocketType, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !93
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !100
  br label %42

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !102
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %32, ptr noundef nonnull align 4 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !103
  br label %42

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !104
  br label %42

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %40, ptr noundef nonnull align 4 dereferenceable(1032) %41, i64 1032, i1 false), !tbaa.struct !105
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @register_standard_node_socket_types() local_unnamed_addr #0 {
  %1 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 0) #4
  %2 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 0) #4
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %4 = tail call ptr %3(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %5 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef %1, i64 noundef 64) #4
  %6 = tail call ptr @RNA_struct_find(ptr noundef %1) #4
  %7 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 9, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %6, ptr noundef %4) #4
  %8 = tail call ptr @RNA_struct_find(ptr noundef %2) #4
  %9 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 10, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %8, ptr noundef %4) #4
  %10 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 11
  store i32 0, ptr %10, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 12
  store i32 0, ptr %11, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %4) #4
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %12, align 8, !tbaa !108
  %13 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %13, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.bNodeSocketType, ptr %4, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %14, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %4) #4
  %15 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 13) #4
  %16 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 13) #4
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %18 = tail call ptr %17(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %19 = tail call ptr @BLI_strncpy(ptr noundef %18, ptr noundef %15, i64 noundef 64) #4
  %20 = tail call ptr @RNA_struct_find(ptr noundef %15) #4
  %21 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 9, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %20, ptr noundef %18) #4
  %22 = tail call ptr @RNA_struct_find(ptr noundef %16) #4
  %23 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 10, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %22, ptr noundef %18) #4
  %24 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 11
  store i32 0, ptr %24, align 8, !tbaa !93
  %25 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 12
  store i32 13, ptr %25, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %18) #4
  %26 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %26, align 8, !tbaa !108
  %27 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %27, align 8, !tbaa !109
  %28 = getelementptr inbounds %struct.bNodeSocketType, ptr %18, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %28, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %18) #4
  %29 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 14) #4
  %30 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 14) #4
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %32 = tail call ptr %31(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %33 = tail call ptr @BLI_strncpy(ptr noundef %32, ptr noundef %29, i64 noundef 64) #4
  %34 = tail call ptr @RNA_struct_find(ptr noundef %29) #4
  %35 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 9, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %34, ptr noundef %32) #4
  %36 = tail call ptr @RNA_struct_find(ptr noundef %30) #4
  %37 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 10, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %36, ptr noundef %32) #4
  %38 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 11
  store i32 0, ptr %38, align 8, !tbaa !93
  %39 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 12
  store i32 14, ptr %39, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %32) #4
  %40 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %40, align 8, !tbaa !108
  %41 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %41, align 8, !tbaa !109
  %42 = getelementptr inbounds %struct.bNodeSocketType, ptr %32, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %42, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %32) #4
  %43 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 15) #4
  %44 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 15) #4
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %46 = tail call ptr %45(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %47 = tail call ptr @BLI_strncpy(ptr noundef %46, ptr noundef %43, i64 noundef 64) #4
  %48 = tail call ptr @RNA_struct_find(ptr noundef %43) #4
  %49 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 9, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %48, ptr noundef %46) #4
  %50 = tail call ptr @RNA_struct_find(ptr noundef %44) #4
  %51 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 10, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %50, ptr noundef %46) #4
  %52 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 11
  store i32 0, ptr %52, align 8, !tbaa !93
  %53 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 12
  store i32 15, ptr %53, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %46) #4
  %54 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %54, align 8, !tbaa !108
  %55 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %55, align 8, !tbaa !109
  %56 = getelementptr inbounds %struct.bNodeSocketType, ptr %46, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %56, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %46) #4
  %57 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 327696) #4
  %58 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 327696) #4
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %60 = tail call ptr %59(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %61 = tail call ptr @BLI_strncpy(ptr noundef %60, ptr noundef %57, i64 noundef 64) #4
  %62 = tail call ptr @RNA_struct_find(ptr noundef %57) #4
  %63 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 9, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %62, ptr noundef %60) #4
  %64 = tail call ptr @RNA_struct_find(ptr noundef %58) #4
  %65 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 10, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %64, ptr noundef %60) #4
  %66 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 11
  store i32 0, ptr %66, align 8, !tbaa !93
  %67 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 12
  store i32 327696, ptr %67, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %60) #4
  %68 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %68, align 8, !tbaa !108
  %69 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %69, align 8, !tbaa !109
  %70 = getelementptr inbounds %struct.bNodeSocketType, ptr %60, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %70, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %60) #4
  %71 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 393233) #4
  %72 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 0, i32 noundef 393233) #4
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %74 = tail call ptr %73(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %75 = tail call ptr @BLI_strncpy(ptr noundef %74, ptr noundef %71, i64 noundef 64) #4
  %76 = tail call ptr @RNA_struct_find(ptr noundef %71) #4
  %77 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 9, i32 1
  store ptr %76, ptr %77, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %76, ptr noundef %74) #4
  %78 = tail call ptr @RNA_struct_find(ptr noundef %72) #4
  %79 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 10, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %78, ptr noundef %74) #4
  %80 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 11
  store i32 0, ptr %80, align 8, !tbaa !93
  %81 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 12
  store i32 393233, ptr %81, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %74) #4
  %82 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %82, align 8, !tbaa !108
  %83 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %83, align 8, !tbaa !109
  %84 = getelementptr inbounds %struct.bNodeSocketType, ptr %74, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %84, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %74) #4
  %85 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef 0) #4
  %86 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 6, i32 noundef 0) #4
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %88 = tail call ptr %87(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %89 = tail call ptr @BLI_strncpy(ptr noundef %88, ptr noundef %85, i64 noundef 64) #4
  %90 = tail call ptr @RNA_struct_find(ptr noundef %85) #4
  %91 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 9, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %90, ptr noundef %88) #4
  %92 = tail call ptr @RNA_struct_find(ptr noundef %86) #4
  %93 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 10, i32 1
  store ptr %92, ptr %93, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %92, ptr noundef %88) #4
  %94 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 11
  store i32 6, ptr %94, align 8, !tbaa !93
  %95 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 12
  store i32 0, ptr %95, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %88) #4
  %96 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %96, align 8, !tbaa !108
  %97 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %97, align 8, !tbaa !109
  %98 = getelementptr inbounds %struct.bNodeSocketType, ptr %88, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %98, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %88) #4
  %99 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef 13) #4
  %100 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 6, i32 noundef 13) #4
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %102 = tail call ptr %101(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %103 = tail call ptr @BLI_strncpy(ptr noundef %102, ptr noundef %99, i64 noundef 64) #4
  %104 = tail call ptr @RNA_struct_find(ptr noundef %99) #4
  %105 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 9, i32 1
  store ptr %104, ptr %105, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %104, ptr noundef %102) #4
  %106 = tail call ptr @RNA_struct_find(ptr noundef %100) #4
  %107 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 10, i32 1
  store ptr %106, ptr %107, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %106, ptr noundef %102) #4
  %108 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 11
  store i32 6, ptr %108, align 8, !tbaa !93
  %109 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 12
  store i32 13, ptr %109, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %102) #4
  %110 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %110, align 8, !tbaa !108
  %111 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %111, align 8, !tbaa !109
  %112 = getelementptr inbounds %struct.bNodeSocketType, ptr %102, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %112, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %102) #4
  %113 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef 14) #4
  %114 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 6, i32 noundef 14) #4
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %116 = tail call ptr %115(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %117 = tail call ptr @BLI_strncpy(ptr noundef %116, ptr noundef %113, i64 noundef 64) #4
  %118 = tail call ptr @RNA_struct_find(ptr noundef %113) #4
  %119 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 9, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %118, ptr noundef %116) #4
  %120 = tail call ptr @RNA_struct_find(ptr noundef %114) #4
  %121 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 10, i32 1
  store ptr %120, ptr %121, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %120, ptr noundef %116) #4
  %122 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 11
  store i32 6, ptr %122, align 8, !tbaa !93
  %123 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 12
  store i32 14, ptr %123, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %116) #4
  %124 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %124, align 8, !tbaa !108
  %125 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %125, align 8, !tbaa !109
  %126 = getelementptr inbounds %struct.bNodeSocketType, ptr %116, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %126, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %116) #4
  %127 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef 15) #4
  %128 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 6, i32 noundef 15) #4
  %129 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %130 = tail call ptr %129(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %131 = tail call ptr @BLI_strncpy(ptr noundef %130, ptr noundef %127, i64 noundef 64) #4
  %132 = tail call ptr @RNA_struct_find(ptr noundef %127) #4
  %133 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 9, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %132, ptr noundef %130) #4
  %134 = tail call ptr @RNA_struct_find(ptr noundef %128) #4
  %135 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 10, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %134, ptr noundef %130) #4
  %136 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 11
  store i32 6, ptr %136, align 8, !tbaa !93
  %137 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 12
  store i32 15, ptr %137, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %130) #4
  %138 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %138, align 8, !tbaa !108
  %139 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %139, align 8, !tbaa !109
  %140 = getelementptr inbounds %struct.bNodeSocketType, ptr %130, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %140, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %130) #4
  %141 = tail call ptr @nodeStaticSocketType(i32 noundef 4, i32 noundef 0) #4
  %142 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 4, i32 noundef 0) #4
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %144 = tail call ptr %143(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %145 = tail call ptr @BLI_strncpy(ptr noundef %144, ptr noundef %141, i64 noundef 64) #4
  %146 = tail call ptr @RNA_struct_find(ptr noundef %141) #4
  %147 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 9, i32 1
  store ptr %146, ptr %147, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %146, ptr noundef %144) #4
  %148 = tail call ptr @RNA_struct_find(ptr noundef %142) #4
  %149 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 10, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %148, ptr noundef %144) #4
  %150 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 11
  store i32 4, ptr %150, align 8, !tbaa !93
  %151 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 12
  store i32 0, ptr %151, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %144) #4
  %152 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %152, align 8, !tbaa !108
  %153 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %153, align 8, !tbaa !109
  %154 = getelementptr inbounds %struct.bNodeSocketType, ptr %144, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %154, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %144) #4
  %155 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 0) #4
  %156 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 0) #4
  %157 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %158 = tail call ptr %157(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %159 = tail call ptr @BLI_strncpy(ptr noundef %158, ptr noundef %155, i64 noundef 64) #4
  %160 = tail call ptr @RNA_struct_find(ptr noundef %155) #4
  %161 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 9, i32 1
  store ptr %160, ptr %161, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %160, ptr noundef %158) #4
  %162 = tail call ptr @RNA_struct_find(ptr noundef %156) #4
  %163 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 10, i32 1
  store ptr %162, ptr %163, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %162, ptr noundef %158) #4
  %164 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 11
  store i32 1, ptr %164, align 8, !tbaa !93
  %165 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 12
  store i32 0, ptr %165, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %158) #4
  %166 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %166, align 8, !tbaa !108
  %167 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %167, align 8, !tbaa !109
  %168 = getelementptr inbounds %struct.bNodeSocketType, ptr %158, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %168, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %158) #4
  %169 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 65557) #4
  %170 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 65557) #4
  %171 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %172 = tail call ptr %171(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %173 = tail call ptr @BLI_strncpy(ptr noundef %172, ptr noundef %169, i64 noundef 64) #4
  %174 = tail call ptr @RNA_struct_find(ptr noundef %169) #4
  %175 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 9, i32 1
  store ptr %174, ptr %175, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %174, ptr noundef %172) #4
  %176 = tail call ptr @RNA_struct_find(ptr noundef %170) #4
  %177 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 10, i32 1
  store ptr %176, ptr %177, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %176, ptr noundef %172) #4
  %178 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 11
  store i32 1, ptr %178, align 8, !tbaa !93
  %179 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 12
  store i32 65557, ptr %179, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %172) #4
  %180 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %180, align 8, !tbaa !108
  %181 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %181, align 8, !tbaa !109
  %182 = getelementptr inbounds %struct.bNodeSocketType, ptr %172, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %182, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %172) #4
  %183 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 22) #4
  %184 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 22) #4
  %185 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %186 = tail call ptr %185(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %187 = tail call ptr @BLI_strncpy(ptr noundef %186, ptr noundef %183, i64 noundef 64) #4
  %188 = tail call ptr @RNA_struct_find(ptr noundef %183) #4
  %189 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 9, i32 1
  store ptr %188, ptr %189, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %188, ptr noundef %186) #4
  %190 = tail call ptr @RNA_struct_find(ptr noundef %184) #4
  %191 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 10, i32 1
  store ptr %190, ptr %191, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %190, ptr noundef %186) #4
  %192 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 11
  store i32 1, ptr %192, align 8, !tbaa !93
  %193 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 12
  store i32 22, ptr %193, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %186) #4
  %194 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %194, align 8, !tbaa !108
  %195 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %195, align 8, !tbaa !109
  %196 = getelementptr inbounds %struct.bNodeSocketType, ptr %186, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %196, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %186) #4
  %197 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 458775) #4
  %198 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 458775) #4
  %199 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %200 = tail call ptr %199(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %201 = tail call ptr @BLI_strncpy(ptr noundef %200, ptr noundef %197, i64 noundef 64) #4
  %202 = tail call ptr @RNA_struct_find(ptr noundef %197) #4
  %203 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 9, i32 1
  store ptr %202, ptr %203, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %202, ptr noundef %200) #4
  %204 = tail call ptr @RNA_struct_find(ptr noundef %198) #4
  %205 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 10, i32 1
  store ptr %204, ptr %205, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %204, ptr noundef %200) #4
  %206 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 11
  store i32 1, ptr %206, align 8, !tbaa !93
  %207 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 12
  store i32 458775, ptr %207, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %200) #4
  %208 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %208, align 8, !tbaa !108
  %209 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %209, align 8, !tbaa !109
  %210 = getelementptr inbounds %struct.bNodeSocketType, ptr %200, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %210, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %200) #4
  %211 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 524312) #4
  %212 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 524312) #4
  %213 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %214 = tail call ptr %213(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %215 = tail call ptr @BLI_strncpy(ptr noundef %214, ptr noundef %211, i64 noundef 64) #4
  %216 = tail call ptr @RNA_struct_find(ptr noundef %211) #4
  %217 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 9, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %216, ptr noundef %214) #4
  %218 = tail call ptr @RNA_struct_find(ptr noundef %212) #4
  %219 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 10, i32 1
  store ptr %218, ptr %219, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %218, ptr noundef %214) #4
  %220 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 11
  store i32 1, ptr %220, align 8, !tbaa !93
  %221 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 12
  store i32 524312, ptr %221, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %214) #4
  %222 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %222, align 8, !tbaa !108
  %223 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %223, align 8, !tbaa !109
  %224 = getelementptr inbounds %struct.bNodeSocketType, ptr %214, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %224, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %214) #4
  %225 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 327706) #4
  %226 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 327706) #4
  %227 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %228 = tail call ptr %227(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %229 = tail call ptr @BLI_strncpy(ptr noundef %228, ptr noundef %225, i64 noundef 64) #4
  %230 = tail call ptr @RNA_struct_find(ptr noundef %225) #4
  %231 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 9, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %230, ptr noundef %228) #4
  %232 = tail call ptr @RNA_struct_find(ptr noundef %226) #4
  %233 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 10, i32 1
  store ptr %232, ptr %233, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %232, ptr noundef %228) #4
  %234 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 11
  store i32 1, ptr %234, align 8, !tbaa !93
  %235 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 12
  store i32 327706, ptr %235, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %228) #4
  %236 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %236, align 8, !tbaa !108
  %237 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %237, align 8, !tbaa !109
  %238 = getelementptr inbounds %struct.bNodeSocketType, ptr %228, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %238, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %228) #4
  %239 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef 29) #4
  %240 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 1, i32 noundef 29) #4
  %241 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %242 = tail call ptr %241(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %243 = tail call ptr @BLI_strncpy(ptr noundef %242, ptr noundef %239, i64 noundef 64) #4
  %244 = tail call ptr @RNA_struct_find(ptr noundef %239) #4
  %245 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 9, i32 1
  store ptr %244, ptr %245, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %244, ptr noundef %242) #4
  %246 = tail call ptr @RNA_struct_find(ptr noundef %240) #4
  %247 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 10, i32 1
  store ptr %246, ptr %247, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %246, ptr noundef %242) #4
  %248 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 11
  store i32 1, ptr %248, align 8, !tbaa !93
  %249 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 12
  store i32 29, ptr %249, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %242) #4
  %250 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %250, align 8, !tbaa !108
  %251 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %251, align 8, !tbaa !109
  %252 = getelementptr inbounds %struct.bNodeSocketType, ptr %242, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %252, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %242) #4
  %253 = tail call ptr @nodeStaticSocketType(i32 noundef 2, i32 noundef 0) #4
  %254 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 2, i32 noundef 0) #4
  %255 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %256 = tail call ptr %255(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %257 = tail call ptr @BLI_strncpy(ptr noundef %256, ptr noundef %253, i64 noundef 64) #4
  %258 = tail call ptr @RNA_struct_find(ptr noundef %253) #4
  %259 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 9, i32 1
  store ptr %258, ptr %259, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %258, ptr noundef %256) #4
  %260 = tail call ptr @RNA_struct_find(ptr noundef %254) #4
  %261 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 10, i32 1
  store ptr %260, ptr %261, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %260, ptr noundef %256) #4
  %262 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 11
  store i32 2, ptr %262, align 8, !tbaa !93
  %263 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 12
  store i32 0, ptr %263, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %256) #4
  %264 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %264, align 8, !tbaa !108
  %265 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %265, align 8, !tbaa !109
  %266 = getelementptr inbounds %struct.bNodeSocketType, ptr %256, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %266, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %256) #4
  %267 = tail call ptr @nodeStaticSocketType(i32 noundef 7, i32 noundef 0) #4
  %268 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 7, i32 noundef 0) #4
  %269 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %270 = tail call ptr %269(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %271 = tail call ptr @BLI_strncpy(ptr noundef %270, ptr noundef %267, i64 noundef 64) #4
  %272 = tail call ptr @RNA_struct_find(ptr noundef %267) #4
  %273 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 9, i32 1
  store ptr %272, ptr %273, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %272, ptr noundef %270) #4
  %274 = tail call ptr @RNA_struct_find(ptr noundef %268) #4
  %275 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 10, i32 1
  store ptr %274, ptr %275, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %274, ptr noundef %270) #4
  %276 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 11
  store i32 7, ptr %276, align 8, !tbaa !93
  %277 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 12
  store i32 0, ptr %277, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %270) #4
  %278 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %278, align 8, !tbaa !108
  %279 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %279, align 8, !tbaa !109
  %280 = getelementptr inbounds %struct.bNodeSocketType, ptr %270, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %280, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %270) #4
  %281 = tail call ptr @nodeStaticSocketType(i32 noundef 3, i32 noundef 0) #4
  %282 = tail call ptr @nodeStaticSocketInterfaceType(i32 noundef 3, i32 noundef 0) #4
  %283 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %284 = tail call ptr %283(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %285 = tail call ptr @BLI_strncpy(ptr noundef %284, ptr noundef %281, i64 noundef 64) #4
  %286 = tail call ptr @RNA_struct_find(ptr noundef %281) #4
  %287 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 9, i32 1
  store ptr %286, ptr %287, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %286, ptr noundef %284) #4
  %288 = tail call ptr @RNA_struct_find(ptr noundef %282) #4
  %289 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 10, i32 1
  store ptr %288, ptr %289, align 8, !tbaa !107
  tail call void @RNA_struct_blender_type_set(ptr noundef %288, ptr noundef %284) #4
  %290 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 11
  store i32 3, ptr %290, align 8, !tbaa !93
  %291 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 12
  store i32 0, ptr %291, align 4, !tbaa !91
  tail call void @ED_init_standard_node_socket_type(ptr noundef %284) #4
  %292 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 6
  store ptr @standard_node_socket_interface_init_socket, ptr %292, align 8, !tbaa !108
  %293 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 8
  store ptr @standard_node_socket_interface_from_socket, ptr %293, align 8, !tbaa !109
  %294 = getelementptr inbounds %struct.bNodeSocketType, ptr %284, i64 0, i32 7
  store ptr @standard_node_socket_interface_verify_socket, ptr %294, align 8, !tbaa !110
  tail call void @nodeRegisterSocketType(ptr noundef %284) #4
  %295 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %296 = tail call ptr %295(i64 noundef 200, ptr noundef nonnull @.str.7) #4
  %297 = tail call ptr @BLI_strncpy(ptr noundef %296, ptr noundef nonnull @.str.8, i64 noundef 64) #4
  %298 = tail call ptr @RNA_struct_find(ptr noundef nonnull @.str.8) #4
  %299 = getelementptr inbounds %struct.bNodeSocketType, ptr %296, i64 0, i32 9, i32 1
  store ptr %298, ptr %299, align 8, !tbaa !106
  tail call void @RNA_struct_blender_type_set(ptr noundef %298, ptr noundef %296) #4
  %300 = getelementptr inbounds %struct.bNodeSocketType, ptr %296, i64 0, i32 11
  store i32 -1, ptr %300, align 8, !tbaa !93
  tail call void @ED_init_node_socket_type_virtual(ptr noundef %296) #4
  tail call void @nodeRegisterSocketType(ptr noundef %296) #4
  ret void
}

declare void @nodeRegisterSocketType(ptr noundef) local_unnamed_addr #1

declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @nodeStaticSocketType(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @nodeStaticSocketInterfaceType(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #1

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_init_standard_node_socket_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @standard_node_socket_interface_init_socket(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr nocapture noundef %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.bNodeSocketType, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  store i16 %10, ptr %11, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.bNodeSocketType, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !93
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  store i16 %16, ptr %17, align 8, !tbaa !80
  tail call void @node_socket_copy_default_value(ptr noundef %3, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @standard_node_socket_interface_from_socket(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.bNodeSocketType, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  store i16 %9, ptr %10, align 8, !tbaa !80
  tail call void @node_socket_copy_default_value(ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @standard_node_socket_interface_verify_socket(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !80
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.bNodeSocketType, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %52

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  tail call void @node_socket_init_default_value(ptr noundef %3)
  %19 = load ptr, ptr %9, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.bNodeSocketType, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !93
  switch i32 %21, label %52 [
    i32 0, label %22
    i32 6, label %32
    i32 1, label %42
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load ptr, ptr %15, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %25, i64 0, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !52
  %28 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %24, i64 0, i32 2
  store float %27, ptr %28, align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %25, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %24, i64 0, i32 3
  store float %30, ptr %31, align 4, !tbaa !54
  br label %52

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = load ptr, ptr %15, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !57
  %38 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %34, i64 0, i32 2
  store i32 %37, ptr %38, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %35, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.bNodeSocketValueInt, ptr %34, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !58
  br label %52

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = load ptr, ptr %15, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %45, i64 0, i32 2
  %47 = load float, ptr %46, align 4, !tbaa !64
  %48 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %44, i64 0, i32 2
  store float %47, ptr %48, align 4, !tbaa !64
  %49 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %45, i64 0, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !66
  %51 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %44, i64 0, i32 3
  store float %50, ptr %51, align 4, !tbaa !66
  br label %52

52:                                               ; preds = %14, %5, %18, %42, %32, %22
  ret void
}

declare void @ED_init_node_socket_type_virtual(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!51 = !{!35, !39, i64 88}
!52 = !{!50, !39, i64 8}
!53 = !{!35, !39, i64 92}
!54 = !{!50, !39, i64 12}
!55 = !{!56, !36, i64 4}
!56 = !{!"bNodeSocketValueInt", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!57 = !{!56, !36, i64 8}
!58 = !{!56, !36, i64 12}
!59 = !{!60, !37, i64 0}
!60 = !{!"bNodeSocketValueBoolean", !37, i64 0, !37, i64 1}
!61 = !{!39, !39, i64 0}
!62 = !{!35, !39, i64 76}
!63 = !{!35, !39, i64 80}
!64 = !{!65, !39, i64 16}
!65 = !{!"bNodeSocketValueVector", !36, i64 0, !37, i64 4, !39, i64 16, !39, i64 20}
!66 = !{!65, !39, i64 20}
!67 = !{!35, !39, i64 84}
!68 = !{!69, !40, i64 32}
!69 = !{!"bNode", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !45, i64 172, !45, i64 174, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !45, i64 184, !45, i64 186, !37, i64 188, !70, i64 200, !70, i64 216, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !70, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !36, i64 308, !37, i64 312, !45, i64 376, !45, i64 378, !39, i64 380, !39, i64 384, !45, i64 388, !45, i64 390, !40, i64 392, !71, i64 400, !71, i64 416, !71, i64 432, !45, i64 448, !45, i64 450, !36, i64 452, !40, i64 456}
!70 = !{!"ListBase", !40, i64 0, !40, i64 8}
!71 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!72 = !{!73, !40, i64 448}
!73 = !{!"bNodeType", !40, i64 0, !40, i64 8, !45, i64 16, !37, i64 18, !36, i64 84, !37, i64 88, !37, i64 152, !36, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !45, i64 436, !45, i64 438, !45, i64 440, !40, i64 448, !40, i64 456, !37, i64 464, !40, i64 528, !40, i64 536, !40, i64 544, !40, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !74, i64 720}
!74 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!75 = !{!73, !40, i64 456}
!76 = !{!40, !40, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!44, !45, i64 168}
!81 = !{!35, !36, i64 4}
!82 = !{!44, !45, i64 172}
!83 = !{!35, !40, i64 104}
!84 = distinct !{!84, !78, !79}
!85 = !{!70, !40, i64 0}
!86 = !{!44, !40, i64 0}
!87 = distinct !{!87, !78, !79}
!88 = distinct !{!88, !78, !79}
!89 = distinct !{!89, !78, !79}
!90 = !{!44, !40, i64 176}
!91 = !{!92, !36, i64 196}
!92 = !{!"bNodeSocketType", !37, i64 0, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !74, i64 128, !74, i64 160, !36, i64 192, !36, i64 196}
!93 = !{!92, !36, i64 192}
!94 = !{!50, !36, i64 0}
!95 = !{!56, !36, i64 0}
!96 = !{!65, !36, i64 0}
!97 = !{!98, !36, i64 0}
!98 = !{!"bNodeSocketValueString", !36, i64 0, !36, i64 4, !37, i64 8}
!99 = !{!37, !37, i64 0}
!100 = !{i64 0, i64 4, !101, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61}
!101 = !{!36, !36, i64 0}
!102 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 4, !101, i64 12, i64 4, !101}
!103 = !{i64 0, i64 4, !101, i64 4, i64 12, !99, i64 16, i64 4, !61, i64 20, i64 4, !61}
!104 = !{i64 0, i64 16, !99}
!105 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 1024, !99}
!106 = !{!92, !40, i64 136}
!107 = !{!92, !40, i64 168}
!108 = !{!92, !40, i64 104}
!109 = !{!92, !40, i64 120}
!110 = !{!92, !40, i64 112}
