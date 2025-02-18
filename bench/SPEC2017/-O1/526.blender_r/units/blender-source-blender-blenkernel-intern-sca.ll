; ModuleID = 'blender/source/blender/blenkernel/intern/sca.c'
source_filename = "blender/source/blender/blenkernel/intern/sca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bNearSensor = type { [64 x i8], float, float, i32, i32 }
%struct.bRaySensor = type { [64 x i8], float, [64 x i8], [64 x i8], i16, i16, i32 }
%struct.bJoystickSensor = type { [64 x i8], i8, i8, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bSoundActuator = type { i16, i16, i32, i32, [2 x i16], float, float, ptr, %struct.Sound3D, i16, i16, i16, [1 x i16] }
%struct.Sound3D = type { float, float, float, float, float, float, float, float }
%struct.bCameraActuator = type { ptr, float, float, float, float, i16, i16, float }
%struct.bEditObjectActuator = type { i32, i16, i16, ptr, ptr, [64 x i8], [3 x float], [3 x float], float, i16, i16, i16, i16, i32 }
%struct.bRandomActuator = type { i32, i32, i32, i32, float, float, [64 x i8] }
%struct.bArmatureActuator = type { [64 x i8], [64 x i8], i32, float, float, float, ptr, ptr }
%struct.bSteeringActuator = type { [5 x i8], i8, i16, i32, float, float, float, float, i32, ptr, ptr }
%struct.bMouseActuator = type { i16, i16, [2 x i32], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.bSceneActuator = type { i16, i16, i32, ptr, ptr }
%struct.bObjectActuator = type { i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr }
%struct.bMessageActuator = type { [64 x i8], ptr, [64 x i8], i16, i16, i32, [64 x i8] }
%struct.bParentActuator = type { [2 x i8], i16, i32, ptr }
%struct.bPropertyActuator = type { i32, i32, [64 x i8], [64 x i8], ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"nearsens\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"keysens\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"propsens\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"armsens\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"actsens\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"delaysens\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mousesens\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"colsens\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"radarsens\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"randomsens\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"raysens\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"messagesens\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"joysticksens\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Sensor\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"expcont\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"pycont\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"cont\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"actionact\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"soundact\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"objectact\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ipoact\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"propact\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"camact\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"editobact\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"cons act\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"scene act\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"group act\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"random act\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"message act\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"game act\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"visibility act\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"2d filter act\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"parent act\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"state act\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"armature act\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"steering act\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"mouse act\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Actuator\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"new link\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @free_sensor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %12(ptr noundef nonnull %9) #6
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_sensors(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %17
  %5 = phi ptr [ %19, %17 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bSensor, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %10(ptr noundef nonnull %7) #6
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.bSensor, ptr %5, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %16(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %11, %15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %18(ptr noundef nonnull %5) #6
  %19 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %4, !llvm.loop !42

21:                                               ; preds = %17, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_sensor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !45
  %6 = or i16 %5, 4
  store i16 %6, ptr %4, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %12 = tail call ptr %11(ptr noundef nonnull %8) #6
  %13 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %20 = tail call ptr %19(ptr noundef nonnull %16) #6
  %21 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 12
  store ptr %20, ptr %21, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %18, %14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_sensors(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2, %27
  %6 = phi ptr [ %28, %27 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %8 = tail call ptr %7(ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.bSensor, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !45
  %11 = or i16 %10, 4
  store i16 %11, ptr %9, align 4, !tbaa !45
  %12 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %17 = tail call ptr %16(ptr noundef nonnull %13) #6
  %18 = getelementptr inbounds %struct.bSensor, ptr %8, i64 0, i32 11
  store ptr %17, ptr %18, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %15, %5
  %20 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %25 = tail call ptr %24(ptr noundef nonnull %21) #6
  %26 = getelementptr inbounds %struct.bSensor, ptr %8, i64 0, i32 12
  store ptr %25, ptr %26, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %19, %23
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %8) #6
  %28 = load ptr, ptr %6, align 8, !tbaa !40
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !llvm.loop !46

30:                                               ; preds = %27, %2
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_sensor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 5
  store i16 0, ptr %8, align 2, !tbaa !47
  %9 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !48
  switch i16 %10, label %57 [
    i16 0, label %11
    i16 2, label %12
    i16 3, label %17
    i16 4, label %20
    i16 14, label %23
    i16 12, label %26
    i16 13, label %29
    i16 5, label %32
    i16 6, label %35
    i16 7, label %38
    i16 8, label %41
    i16 9, label %44
    i16 10, label %48
    i16 11, label %51
  ]

11:                                               ; preds = %7
  store i16 0, ptr %8, align 2, !tbaa !47
  br label %57

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %14 = tail call ptr %13(i64 noundef 80, ptr noundef nonnull @.str) #6
  store ptr %14, ptr %2, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.bNearSensor, ptr %14, i64 0, i32 1
  store float 1.000000e+00, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.bNearSensor, ptr %14, i64 0, i32 2
  store float 2.000000e+00, ptr %16, align 4, !tbaa !53
  br label %57

17:                                               ; preds = %7
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %19 = tail call ptr %18(i64 noundef 136, ptr noundef nonnull @.str.1) #6
  store ptr %19, ptr %2, align 8, !tbaa !41
  br label %57

20:                                               ; preds = %7
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %22 = tail call ptr %21(i64 noundef 200, ptr noundef nonnull @.str.2) #6
  store ptr %22, ptr %2, align 8, !tbaa !41
  br label %57

23:                                               ; preds = %7
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %25 = tail call ptr %24(i64 noundef 136, ptr noundef nonnull @.str.3) #6
  store ptr %25, ptr %2, align 8, !tbaa !41
  br label %57

26:                                               ; preds = %7
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %28 = tail call ptr %27(i64 noundef 72, ptr noundef nonnull @.str.4) #6
  store ptr %28, ptr %2, align 8, !tbaa !41
  br label %57

29:                                               ; preds = %7
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %31 = tail call ptr %30(i64 noundef 8, ptr noundef nonnull @.str.5) #6
  store ptr %31, ptr %2, align 8, !tbaa !41
  br label %57

32:                                               ; preds = %7
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %34 = tail call ptr %33(i64 noundef 136, ptr noundef nonnull @.str.6) #6
  store ptr %34, ptr %2, align 8, !tbaa !41
  store i16 1, ptr %34, align 2, !tbaa !54
  br label %57

35:                                               ; preds = %7
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %37 = tail call ptr %36(i64 noundef 136, ptr noundef nonnull @.str.7) #6
  store ptr %37, ptr %2, align 8, !tbaa !41
  br label %57

38:                                               ; preds = %7
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %40 = tail call ptr %39(i64 noundef 76, ptr noundef nonnull @.str.8) #6
  store ptr %40, ptr %2, align 8, !tbaa !41
  br label %57

41:                                               ; preds = %7
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %43 = tail call ptr %42(i64 noundef 72, ptr noundef nonnull @.str.9) #6
  store ptr %43, ptr %2, align 8, !tbaa !41
  br label %57

44:                                               ; preds = %7
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %46 = tail call ptr %45(i64 noundef 204, ptr noundef nonnull @.str.10) #6
  store ptr %46, ptr %2, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.bRaySensor, ptr %46, i64 0, i32 1
  store float 0x3F847AE140000000, ptr %47, align 4, !tbaa !56
  br label %57

48:                                               ; preds = %7
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %50 = tail call ptr %49(i64 noundef 136, ptr noundef nonnull @.str.11) #6
  store ptr %50, ptr %2, align 8, !tbaa !41
  br label %57

51:                                               ; preds = %7
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %53 = tail call ptr %52(i64 noundef 92, ptr noundef nonnull @.str.12) #6
  store ptr %53, ptr %2, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct.bJoystickSensor, ptr %53, i64 0, i32 9
  store i32 1, ptr %54, align 4, !tbaa !58
  %55 = getelementptr inbounds %struct.bJoystickSensor, ptr %53, i64 0, i32 4
  store i16 1, ptr %55, align 4, !tbaa !60
  %56 = getelementptr inbounds %struct.bJoystickSensor, ptr %53, i64 0, i32 8
  store i32 1, ptr %56, align 4, !tbaa !61
  br label %57

57:                                               ; preds = %7, %51, %48, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %12, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_sensor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.13) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 2
  store i16 %4, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 4, !tbaa !45
  tail call void @init_sensor(ptr noundef %3)
  %7 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %7, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false) #6
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_controller(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %9

6:                                                ; preds = %46, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9, !llvm.loop !65

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %46
  %15 = phi ptr [ %47, %46 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.bSensor, ptr %15, i64 0, i32 12
  %17 = getelementptr inbounds %struct.bSensor, ptr %15, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !66
  %19 = icmp sgt i16 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = zext nneg i16 %18 to i64
  br label %22

22:                                               ; preds = %34, %20
  %23 = phi i64 [ 0, %20 ], [ %36, %34 ]
  %24 = phi i32 [ 0, %20 ], [ %35, %34 ]
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %16, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  br i1 %25, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr ptr, ptr %27, i64 -1
  store ptr %28, ptr %30, align 8, !tbaa !40
  br label %34

31:                                               ; preds = %22
  %32 = icmp eq ptr %28, %0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ 1, %29 ], [ %33, %31 ]
  %36 = add nuw nsw i64 %23, 1
  %37 = icmp eq i64 %36, %21
  br i1 %37, label %38, label %22, !llvm.loop !67

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = add nsw i16 %18, -1
  store i16 %41, ptr %17, align 2, !tbaa !66
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %45 = load ptr, ptr %16, align 8, !tbaa !40
  tail call void %44(ptr noundef %45) #6
  store ptr null, ptr %16, align 8, !tbaa !40
  br label %46

46:                                               ; preds = %14, %38, %40, %43
  %47 = load ptr, ptr %15, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %6, label %14, !llvm.loop !68

49:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_logicbricks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %2, align 2, !tbaa !66
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = zext nneg i16 %4 to i64
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i64 [ 0, %6 ], [ %23, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %1, align 8, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %12, i64 %9
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  br i1 %11, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr ptr, ptr %13, i64 -1
  store ptr %14, ptr %16, align 8, !tbaa !40
  br label %21

17:                                               ; preds = %8
  %18 = load ptr, ptr %0, align 8, !tbaa !40
  %19 = icmp eq ptr %14, %18
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ 1, %15 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, %7
  br i1 %24, label %25, label %8, !llvm.loop !67

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = add nsw i16 %4, -1
  store i16 %28, ptr %2, align 2, !tbaa !66
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %32 = load ptr, ptr %1, align 8, !tbaa !40
  tail call void %31(ptr noundef %32) #6
  store ptr null, ptr %1, align 8, !tbaa !40
  br label %33

33:                                               ; preds = %3, %25, %27, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_controllers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %56, label %7

4:                                                ; preds = %13, %7
  %5 = load ptr, ptr %8, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7, !llvm.loop !69

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = load ptr, ptr @G, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %4, label %16

13:                                               ; preds = %53, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %4, label %16, !llvm.loop !65

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 92
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %53
  %22 = phi ptr [ %54, %53 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.bSensor, ptr %22, i64 0, i32 12
  %24 = getelementptr inbounds %struct.bSensor, ptr %22, i64 0, i32 7
  %25 = load i16, ptr %24, align 2, !tbaa !66
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = zext nneg i16 %25 to i64
  br label %29

29:                                               ; preds = %41, %27
  %30 = phi i64 [ 0, %27 ], [ %43, %41 ]
  %31 = phi i32 [ 0, %27 ], [ %42, %41 ]
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %23, align 8, !tbaa !40
  %34 = getelementptr inbounds ptr, ptr %33, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  br i1 %32, label %38, label %36

36:                                               ; preds = %29
  %37 = getelementptr ptr, ptr %34, i64 -1
  store ptr %35, ptr %37, align 8, !tbaa !40
  br label %41

38:                                               ; preds = %29
  %39 = icmp eq ptr %35, %8
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ 1, %36 ], [ %40, %38 ]
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, %28
  br i1 %44, label %45, label %29, !llvm.loop !67

45:                                               ; preds = %41
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = add nsw i16 %25, -1
  store i16 %48, ptr %24, align 2, !tbaa !66
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %52 = load ptr, ptr %23, align 8, !tbaa !40
  tail call void %51(ptr noundef %52) #6
  store ptr null, ptr %23, align 8, !tbaa !40
  br label %53

53:                                               ; preds = %21, %45, %47, %50
  %54 = load ptr, ptr %22, align 8, !tbaa !40
  %55 = icmp eq ptr %54, null
  br i1 %55, label %13, label %21, !llvm.loop !68

56:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %12(ptr noundef nonnull %9) #6
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_controllers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %25, %23 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bController, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %10(ptr noundef nonnull %7) #6
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.bController, ptr %5, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %16(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.bController, ptr %5, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %22(ptr noundef nonnull %19) #6
  br label %23

23:                                               ; preds = %17, %21
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %24(ptr noundef nonnull %5) #6
  %25 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !74

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !76
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !76
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(ptr noundef nonnull %9) #6
  %14 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  store ptr %13, ptr %14, align 8, !tbaa !72
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %21 = tail call ptr %20(ptr noundef nonnull %17) #6
  %22 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 13
  store ptr %21, ptr %22, align 8, !tbaa !70
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 14
  store ptr null, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 8
  store i16 0, ptr %25, align 2, !tbaa !77
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_controllers(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2, %28
  %6 = phi ptr [ %31, %28 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %8 = tail call ptr %7(ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !76
  %12 = or i16 %11, 4
  store i16 %12, ptr %10, align 2, !tbaa !76
  %13 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %18 = tail call ptr %17(ptr noundef nonnull %14) #6
  %19 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !72
  br label %20

20:                                               ; preds = %16, %5
  %21 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %26 = tail call ptr %25(ptr noundef nonnull %22) #6
  %27 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 13
  store ptr %26, ptr %27, align 8, !tbaa !70
  br label %28

28:                                               ; preds = %20, %24
  %29 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 14
  store ptr null, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 8
  store i16 0, ptr %30, align 2, !tbaa !77
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %8) #6
  %31 = load ptr, ptr %6, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !78

33:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_controller(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !79
  switch i16 %9, label %18 [
    i16 2, label %10
    i16 3, label %13
  ]

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %12 = tail call ptr %11(i64 noundef 128, ptr noundef nonnull @.str.15) #6
  br label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %15 = tail call ptr %14(i64 noundef 80, ptr noundef nonnull @.str.16) #6
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %15, %13 ], [ %12, %10 ]
  store ptr %17, ptr %2, align 8, !tbaa !72
  br label %18

18:                                               ; preds = %16, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_controller(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 136, ptr noundef nonnull @.str.17) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 2, !tbaa !76
  %7 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %11(ptr noundef nonnull %8) #6
  br label %12

12:                                               ; preds = %10, %1
  store ptr null, ptr %7, align 8, !tbaa !72
  %13 = load i16, ptr %5, align 8, !tbaa !79
  switch i16 %13, label %22 [
    i16 2, label %14
    i16 3, label %17
  ]

14:                                               ; preds = %12
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %16 = tail call ptr %15(i64 noundef 128, ptr noundef nonnull @.str.15) #6
  br label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %19 = tail call ptr %18(i64 noundef 80, ptr noundef nonnull @.str.16) #6
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ %19, %17 ]
  store ptr %21, ptr %7, align 8, !tbaa !72
  br label %22

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %23, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false) #6
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_actuator(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %9

6:                                                ; preds = %46, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9, !llvm.loop !80

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 93
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %46
  %15 = phi ptr [ %47, %46 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.bController, ptr %15, i64 0, i32 13
  %17 = getelementptr inbounds %struct.bController, ptr %15, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !66
  %19 = icmp sgt i16 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = zext nneg i16 %18 to i64
  br label %22

22:                                               ; preds = %34, %20
  %23 = phi i64 [ 0, %20 ], [ %36, %34 ]
  %24 = phi i32 [ 0, %20 ], [ %35, %34 ]
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %16, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  br i1 %25, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr ptr, ptr %27, i64 -1
  store ptr %28, ptr %30, align 8, !tbaa !40
  br label %34

31:                                               ; preds = %22
  %32 = icmp eq ptr %28, %0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ 1, %29 ], [ %33, %31 ]
  %36 = add nuw nsw i64 %23, 1
  %37 = icmp eq i64 %36, %21
  br i1 %37, label %38, label %22, !llvm.loop !67

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = add nsw i16 %18, -1
  store i16 %41, ptr %17, align 2, !tbaa !66
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %45 = load ptr, ptr %16, align 8, !tbaa !40
  tail call void %44(ptr noundef %45) #6
  store ptr null, ptr %16, align 8, !tbaa !40
  br label %46

46:                                               ; preds = %14, %38, %40, %43
  %47 = load ptr, ptr %15, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %6, label %14, !llvm.loop !81

49:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_actuators(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %56, label %7

4:                                                ; preds = %13, %7
  %5 = load ptr, ptr %8, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7, !llvm.loop !82

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = load ptr, ptr @G, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %4, label %16

13:                                               ; preds = %53, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %4, label %16, !llvm.loop !80

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 93
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %53
  %22 = phi ptr [ %54, %53 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 13
  %24 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 6
  %25 = load i16, ptr %24, align 2, !tbaa !66
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = zext nneg i16 %25 to i64
  br label %29

29:                                               ; preds = %41, %27
  %30 = phi i64 [ 0, %27 ], [ %43, %41 ]
  %31 = phi i32 [ 0, %27 ], [ %42, %41 ]
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %23, align 8, !tbaa !40
  %34 = getelementptr inbounds ptr, ptr %33, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  br i1 %32, label %38, label %36

36:                                               ; preds = %29
  %37 = getelementptr ptr, ptr %34, i64 -1
  store ptr %35, ptr %37, align 8, !tbaa !40
  br label %41

38:                                               ; preds = %29
  %39 = icmp eq ptr %35, %8
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ 1, %36 ], [ %40, %38 ]
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, %28
  br i1 %44, label %45, label %29, !llvm.loop !67

45:                                               ; preds = %41
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = add nsw i16 %25, -1
  store i16 %48, ptr %24, align 2, !tbaa !66
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %52 = load ptr, ptr %23, align 8, !tbaa !40
  tail call void %51(ptr noundef %52) #6
  store ptr null, ptr %23, align 8, !tbaa !40
  br label %53

53:                                               ; preds = %21, %45, %47, %50
  %54 = load ptr, ptr %22, align 8, !tbaa !40
  %55 = icmp eq ptr %54, null
  br i1 %55, label %13, label %21, !llvm.loop !81

56:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_actuator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !85
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bSoundActuator, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %9, %13, %5
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %16 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void %15(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %18(ptr noundef %0) #6
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_actuators(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1, %21
  %5 = phi ptr [ %23, %21 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bActuator, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bActuator, ptr %5, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !85
  %12 = icmp eq i16 %11, 5
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bSoundActuator, ptr %7, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @id_us_min(ptr noundef nonnull %15) #6
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %20 = load ptr, ptr %6, align 8, !tbaa !83
  tail call void %19(ptr noundef %20) #6
  br label %21

21:                                               ; preds = %4, %18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %22(ptr noundef nonnull %5) #6
  %23 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4, !llvm.loop !89

25:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_actuator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !91
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !91
  %8 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(ptr noundef nonnull %9) #6
  %14 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !83
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !85
  %18 = icmp eq i16 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.bSoundActuator, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @id_us_plus(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %19, %24, %15
  ret ptr %3
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @copy_actuators(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2, %30
  %6 = phi ptr [ %31, %30 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %8 = tail call ptr %7(ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.bActuator, ptr %6, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.bActuator, ptr %8, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !91
  %12 = or i16 %11, 4
  store i16 %12, ptr %10, align 2, !tbaa !91
  %13 = getelementptr inbounds %struct.bActuator, ptr %6, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %18 = tail call ptr %17(ptr noundef nonnull %14) #6
  %19 = getelementptr inbounds %struct.bActuator, ptr %8, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !83
  br label %20

20:                                               ; preds = %16, %5
  %21 = getelementptr inbounds %struct.bActuator, ptr %6, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !85
  %23 = icmp eq i16 %22, 5
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load ptr, ptr %13, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.bSoundActuator, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @id_us_plus(ptr noundef nonnull %27) #6
  br label %30

30:                                               ; preds = %20, %24, %29
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %8) #6
  %31 = load ptr, ptr %6, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !92

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_actuator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !85
  switch i16 %9, label %96 [
    i16 15, label %10
    i16 21, label %10
    i16 5, label %13
    i16 0, label %23
    i16 1, label %26
    i16 6, label %29
    i16 3, label %32
    i16 10, label %37
    i16 9, label %42
    i16 11, label %45
    i16 12, label %48
    i16 13, label %51
    i16 14, label %55
    i16 17, label %58
    i16 18, label %61
    i16 19, label %64
    i16 20, label %67
    i16 22, label %70
    i16 23, label %73
    i16 24, label %77
    i16 25, label %86
  ]

10:                                               ; preds = %7, %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %12 = tail call ptr %11(i64 noundef 168, ptr noundef nonnull @.str.19) #6
  store ptr %12, ptr %2, align 8, !tbaa !83
  br label %96

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %15 = tail call ptr %14(i64 noundef 72, ptr noundef nonnull @.str.20) #6
  store ptr %15, ptr %2, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 5
  store float 1.000000e+00, ptr %16, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 4
  store float 1.000000e+00, ptr %17, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 2
  store float 1.000000e+00, ptr %18, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !96
  %20 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 5
  store float 0x401921FB60000000, ptr %20, align 4, !tbaa !97
  %21 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 6
  store float 0x401921FB60000000, ptr %21, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 3
  store float 0x47EFFFFFE0000000, ptr %22, align 4, !tbaa !99
  br label %96

23:                                               ; preds = %7
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %25 = tail call ptr %24(i64 noundef 112, ptr noundef nonnull @.str.21) #6
  store ptr %25, ptr %2, align 8, !tbaa !83
  store i16 15, ptr %25, align 8, !tbaa !100
  br label %96

26:                                               ; preds = %7
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %28 = tail call ptr %27(i64 noundef 148, ptr noundef nonnull @.str.22) #6
  store ptr %28, ptr %2, align 8, !tbaa !83
  br label %96

29:                                               ; preds = %7
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %31 = tail call ptr %30(i64 noundef 144, ptr noundef nonnull @.str.23) #6
  store ptr %31, ptr %2, align 8, !tbaa !83
  br label %96

32:                                               ; preds = %7
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %34 = tail call ptr %33(i64 noundef 32, ptr noundef nonnull @.str.24) #6
  store ptr %34, ptr %2, align 8, !tbaa !83
  %35 = getelementptr inbounds %struct.bCameraActuator, ptr %34, i64 0, i32 6
  store i16 0, ptr %35, align 2, !tbaa !102
  %36 = getelementptr inbounds %struct.bCameraActuator, ptr %34, i64 0, i32 4
  store float 3.125000e-02, ptr %36, align 4, !tbaa !104
  br label %96

37:                                               ; preds = %7
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %39 = tail call ptr %38(i64 noundef 128, ptr noundef nonnull @.str.25) #6
  store ptr %39, ptr %2, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.bEditObjectActuator, ptr %39, i64 0, i32 11
  store i16 2, ptr %40, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.bEditObjectActuator, ptr %39, i64 0, i32 12
  store i16 1, ptr %41, align 2, !tbaa !107
  br label %96

42:                                               ; preds = %7
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %44 = tail call ptr %43(i64 noundef 128, ptr noundef nonnull @.str.26) #6
  store ptr %44, ptr %2, align 8, !tbaa !83
  br label %96

45:                                               ; preds = %7
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %47 = tail call ptr %46(i64 noundef 24, ptr noundef nonnull @.str.27) #6
  store ptr %47, ptr %2, align 8, !tbaa !83
  br label %96

48:                                               ; preds = %7
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %50 = tail call ptr %49(i64 noundef 88, ptr noundef nonnull @.str.28) #6
  store ptr %50, ptr %2, align 8, !tbaa !83
  br label %96

51:                                               ; preds = %7
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %53 = tail call ptr %52(i64 noundef 88, ptr noundef nonnull @.str.29) #6
  store ptr %53, ptr %2, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.bRandomActuator, ptr %53, i64 0, i32 4
  store float 0x3FB99999A0000000, ptr %54, align 4, !tbaa !108
  br label %96

55:                                               ; preds = %7
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %57 = tail call ptr %56(i64 noundef 208, ptr noundef nonnull @.str.30) #6
  store ptr %57, ptr %2, align 8, !tbaa !83
  br label %96

58:                                               ; preds = %7
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %60 = tail call ptr %59(i64 noundef 140, ptr noundef nonnull @.str.31) #6
  store ptr %60, ptr %2, align 8, !tbaa !83
  br label %96

61:                                               ; preds = %7
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %63 = tail call ptr %62(i64 noundef 4, ptr noundef nonnull @.str.32) #6
  store ptr %63, ptr %2, align 8, !tbaa !83
  br label %96

64:                                               ; preds = %7
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %66 = tail call ptr %65(i64 noundef 24, ptr noundef nonnull @.str.33) #6
  store ptr %66, ptr %2, align 8, !tbaa !83
  br label %96

67:                                               ; preds = %7
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %69 = tail call ptr %68(i64 noundef 16, ptr noundef nonnull @.str.34) #6
  store ptr %69, ptr %2, align 8, !tbaa !83
  br label %96

70:                                               ; preds = %7
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %72 = tail call ptr %71(i64 noundef 8, ptr noundef nonnull @.str.35) #6
  store ptr %72, ptr %2, align 8, !tbaa !83
  br label %96

73:                                               ; preds = %7
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %75 = tail call ptr %74(i64 noundef 160, ptr noundef nonnull @.str.36) #6
  store ptr %75, ptr %2, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.bArmatureActuator, ptr %75, i64 0, i32 4
  store float 1.000000e+00, ptr %76, align 8, !tbaa !110
  br label %96

77:                                               ; preds = %7
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %79 = tail call ptr %78(i64 noundef 48, ptr noundef nonnull @.str.37) #6
  store ptr %79, ptr %2, align 8, !tbaa !83
  %80 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 6
  store float 3.000000e+00, ptr %80, align 4, !tbaa !112
  %81 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 7
  store float 1.200000e+02, ptr %81, align 8, !tbaa !114
  %82 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 4
  store float 1.000000e+00, ptr %82, align 4, !tbaa !115
  %83 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 5
  store float 3.000000e+00, ptr %83, align 8, !tbaa !116
  %84 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 1
  store i8 4, ptr %84, align 1, !tbaa !117
  %85 = getelementptr inbounds %struct.bSteeringActuator, ptr %79, i64 0, i32 2
  store i16 1, ptr %85, align 2, !tbaa !118
  br label %96

86:                                               ; preds = %7
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %88 = tail call ptr %87(i64 noundef 44, ptr noundef nonnull @.str.38) #6
  store ptr %88, ptr %2, align 8, !tbaa !83
  %89 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 1
  store i16 95, ptr %89, align 2, !tbaa !119
  %90 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 4
  %91 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 4, i64 1
  store float 2.000000e+00, ptr %91, align 4, !tbaa !121
  store float 2.000000e+00, ptr %90, align 4, !tbaa !121
  %92 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 2
  store i32 2, ptr %92, align 4, !tbaa !122
  %93 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 2, i64 1
  store i32 0, ptr %93, align 4, !tbaa !122
  %94 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 6
  store float 0xBFF921FB60000000, ptr %94, align 4, !tbaa !121
  %95 = getelementptr inbounds %struct.bMouseActuator, ptr %88, i64 0, i32 6, i64 1
  store float 0x3FF921FB60000000, ptr %95, align 4, !tbaa !121
  br label %96

96:                                               ; preds = %7, %86, %77, %73, %70, %67, %64, %61, %58, %55, %51, %48, %45, %42, %37, %32, %29, %26, %23, %13, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_actuator(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @.str.39) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 2, !tbaa !91
  tail call void @init_actuator(ptr noundef %3)
  %7 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 7
  store i32 7627617, ptr %7, align 1
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_sca_new_poins_ob(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 4, !tbaa !45
  %9 = and i16 %8, -5
  store i16 %9, ptr %7, align 4, !tbaa !45
  %10 = load ptr, ptr %6, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !123

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bController, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.bController, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !76
  %21 = and i16 %20, -5
  store i16 %21, ptr %19, align 2, !tbaa !76
  %22 = load ptr, ptr %17, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !124

24:                                               ; preds = %16, %12
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %34, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bActuator, ptr %29, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !90
  %31 = getelementptr inbounds %struct.bActuator, ptr %29, i64 0, i32 4
  %32 = load i16, ptr %31, align 2, !tbaa !91
  %33 = and i16 %32, -5
  store i16 %33, ptr %31, align 2, !tbaa !91
  %34 = load ptr, ptr %29, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !125

36:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_sca_new_poins() local_unnamed_addr #2 {
  %1 = load ptr, ptr @G, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %8

5:                                                ; preds = %36, %32
  %6 = load ptr, ptr %9, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8, !llvm.loop !126

8:                                                ; preds = %0, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 92
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bSensor, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !45
  %17 = and i16 %16, -5
  store i16 %17, ptr %15, align 4, !tbaa !45
  %18 = load ptr, ptr %14, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !123

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 93
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bController, ptr %25, i64 0, i32 2
  store ptr null, ptr %26, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.bController, ptr %25, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !76
  %29 = and i16 %28, -5
  store i16 %29, ptr %27, align 2, !tbaa !76
  %30 = load ptr, ptr %25, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !124

32:                                               ; preds = %24, %20
  %33 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 94
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %5, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %42, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.bActuator, ptr %37, i64 0, i32 2
  store ptr null, ptr %38, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.bActuator, ptr %37, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !91
  %41 = and i16 %40, -5
  store i16 %41, ptr %39, align 2, !tbaa !91
  %42 = load ptr, ptr %37, align 8, !tbaa !40
  %43 = icmp eq ptr %42, null
  br i1 %43, label %5, label %36, !llvm.loop !125

44:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_sca_new_poins_ob(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %32
  %6 = phi ptr [ %33, %32 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 4, !tbaa !45
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !127
  %14 = icmp sgt i16 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = zext nneg i16 %13 to i64
  %17 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 12
  br label %18

18:                                               ; preds = %15, %29
  %19 = phi i64 [ 0, %15 ], [ %30, %29 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store ptr %26, ptr %21, align 8, !tbaa !40
  br label %29

29:                                               ; preds = %18, %24, %28
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, %16
  br i1 %31, label %32, label %18, !llvm.loop !128

32:                                               ; preds = %29, %11, %5
  %33 = load ptr, ptr %6, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !129

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %35, %66
  %40 = phi ptr [ %67, %66 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !76
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 6
  %47 = load i16, ptr %46, align 2, !tbaa !130
  %48 = icmp sgt i16 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = zext nneg i16 %47 to i64
  %51 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 13
  br label %52

52:                                               ; preds = %49, %63
  %53 = phi i64 [ 0, %49 ], [ %64, %63 ]
  %54 = load ptr, ptr %51, align 8, !tbaa !70
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.bActuator, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store ptr %60, ptr %55, align 8, !tbaa !40
  br label %63

63:                                               ; preds = %52, %58, %62
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, %50
  br i1 %65, label %66, label %52, !llvm.loop !131

66:                                               ; preds = %63, %45, %39
  %67 = load ptr, ptr %40, align 8, !tbaa !40
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %39, !llvm.loop !132

69:                                               ; preds = %66, %35
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %71 = load ptr, ptr %70, align 8, !tbaa !40
  %72 = icmp eq ptr %71, null
  br i1 %72, label %201, label %73

73:                                               ; preds = %69, %198
  %74 = phi ptr [ %199, %198 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 4
  %76 = load i16, ptr %75, align 2, !tbaa !91
  %77 = and i16 %76, 4
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %198, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 3
  %81 = load i16, ptr %80, align 8, !tbaa !85
  switch i16 %81, label %198 [
    i16 10, label %82
    i16 11, label %93
    i16 3, label %104
    i16 0, label %114
    i16 14, label %125
    i16 20, label %136
    i16 23, label %147
    i16 6, label %167
    i16 24, label %178
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.bEditObjectActuator, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !133
  %87 = icmp eq ptr %86, null
  br i1 %87, label %198, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ID, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !134
  %91 = icmp eq ptr %90, null
  br i1 %91, label %198, label %92

92:                                               ; preds = %88
  store ptr %90, ptr %85, align 8, !tbaa !133
  br label %198

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !83
  %96 = getelementptr inbounds %struct.bSceneActuator, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  %98 = icmp eq ptr %97, null
  br i1 %98, label %198, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !134
  %102 = icmp eq ptr %101, null
  br i1 %102, label %198, label %103

103:                                              ; preds = %99
  store ptr %101, ptr %96, align 8, !tbaa !139
  br label %198

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !83
  %107 = load ptr, ptr %106, align 8, !tbaa !141
  %108 = icmp eq ptr %107, null
  br i1 %108, label %198, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !134
  %112 = icmp eq ptr %111, null
  br i1 %112, label %198, label %113

113:                                              ; preds = %109
  store ptr %111, ptr %106, align 8, !tbaa !141
  br label %198

114:                                              ; preds = %79
  %115 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !83
  %117 = getelementptr inbounds %struct.bObjectActuator, ptr %116, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !142
  %119 = icmp eq ptr %118, null
  br i1 %119, label %198, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ID, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !134
  %123 = icmp eq ptr %122, null
  br i1 %123, label %198, label %124

124:                                              ; preds = %120
  store ptr %122, ptr %117, align 8, !tbaa !142
  br label %198

125:                                              ; preds = %79
  %126 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !83
  %128 = getelementptr inbounds %struct.bMessageActuator, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !143
  %130 = icmp eq ptr %129, null
  br i1 %130, label %198, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.ID, ptr %129, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !134
  %134 = icmp eq ptr %133, null
  br i1 %134, label %198, label %135

135:                                              ; preds = %131
  store ptr %133, ptr %128, align 8, !tbaa !143
  br label %198

136:                                              ; preds = %79
  %137 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !83
  %139 = getelementptr inbounds %struct.bParentActuator, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !145
  %141 = icmp eq ptr %140, null
  br i1 %141, label %198, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.ID, ptr %140, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !134
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %146

146:                                              ; preds = %142
  store ptr %144, ptr %139, align 8, !tbaa !145
  br label %198

147:                                              ; preds = %79
  %148 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %149 = load ptr, ptr %148, align 8, !tbaa !83
  %150 = getelementptr inbounds %struct.bArmatureActuator, ptr %149, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !147
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ID, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !134
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store ptr %155, ptr %150, align 8, !tbaa !147
  br label %158

158:                                              ; preds = %157, %153, %147
  %159 = getelementptr inbounds %struct.bArmatureActuator, ptr %149, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !148
  %161 = icmp eq ptr %160, null
  br i1 %161, label %198, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ID, ptr %160, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !134
  %165 = icmp eq ptr %164, null
  br i1 %165, label %198, label %166

166:                                              ; preds = %162
  store ptr %164, ptr %159, align 8, !tbaa !148
  br label %198

167:                                              ; preds = %79
  %168 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !83
  %170 = getelementptr inbounds %struct.bPropertyActuator, ptr %169, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !149
  %172 = icmp eq ptr %171, null
  br i1 %172, label %198, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.ID, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !134
  %176 = icmp eq ptr %175, null
  br i1 %176, label %198, label %177

177:                                              ; preds = %173
  store ptr %175, ptr %170, align 8, !tbaa !149
  br label %198

178:                                              ; preds = %79
  %179 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %180 = load ptr, ptr %179, align 8, !tbaa !83
  %181 = getelementptr inbounds %struct.bSteeringActuator, ptr %180, i64 0, i32 10
  %182 = load ptr, ptr %181, align 8, !tbaa !151
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.ID, ptr %182, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !134
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store ptr %186, ptr %181, align 8, !tbaa !151
  br label %189

189:                                              ; preds = %188, %184, %178
  %190 = getelementptr inbounds %struct.bSteeringActuator, ptr %180, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !152
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ID, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !134
  %196 = icmp eq ptr %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  store ptr %195, ptr %190, align 8, !tbaa !152
  br label %198

198:                                              ; preds = %189, %193, %197, %79, %167, %173, %177, %158, %162, %166, %136, %142, %146, %125, %131, %135, %114, %120, %124, %104, %109, %113, %93, %99, %103, %82, %88, %92, %73
  %199 = load ptr, ptr %74, align 8, !tbaa !40
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %73, !llvm.loop !153

201:                                              ; preds = %198, %69
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_sca_new_poins() local_unnamed_addr #2 {
  %1 = load ptr, ptr @G, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @set_sca_new_poins_ob(ptr noundef nonnull %6)
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !154

9:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sca_remove_ob_poin(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !48
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store ptr null, ptr %13, align 8, !tbaa !155
  br label %17

17:                                               ; preds = %11, %16, %6
  %18 = load ptr, ptr %7, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !157

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %96, label %24

24:                                               ; preds = %20, %93
  %25 = phi ptr [ %94, %93 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !85
  switch i16 %27, label %93 [
    i16 3, label %28
    i16 0, label %33
    i16 6, label %39
    i16 11, label %45
    i16 10, label %51
    i16 14, label %57
    i16 20, label %63
    i16 23, label %69
    i16 24, label %80
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = load ptr, ptr %30, align 8, !tbaa !141
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %91, label %93

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.bObjectActuator, ptr %35, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %91, label %93

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.bPropertyActuator, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !149
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %91, label %93

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = getelementptr inbounds %struct.bSceneActuator, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %91, label %93

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.bEditObjectActuator, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !133
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %91, label %93

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  %60 = getelementptr inbounds %struct.bMessageActuator, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !143
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %91, label %93

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = getelementptr inbounds %struct.bParentActuator, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !145
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %91, label %93

69:                                               ; preds = %24
  %70 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct.bArmatureActuator, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store ptr null, ptr %72, align 8, !tbaa !147
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.bArmatureActuator, ptr %71, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !148
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %91, label %93

80:                                               ; preds = %24
  %81 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = getelementptr inbounds %struct.bSteeringActuator, ptr %82, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !151
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store ptr null, ptr %83, align 8, !tbaa !151
  br label %87

87:                                               ; preds = %86, %80
  %88 = getelementptr inbounds %struct.bSteeringActuator, ptr %82, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !152
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %76, %63, %57, %51, %45, %39, %33, %28
  %92 = phi ptr [ %30, %28 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ], [ %66, %63 ], [ %77, %76 ], [ %88, %87 ]
  store ptr null, ptr %92, align 8, !tbaa !40
  br label %93

93:                                               ; preds = %91, %87, %76, %63, %57, %51, %45, %39, %33, %28, %24
  %94 = load ptr, ptr %25, align 8, !tbaa !40
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %24, !llvm.loop !158

96:                                               ; preds = %93, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sca_move_sensor(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 92
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !159

11:                                               ; preds = %5
  br i1 %8, label %42, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %26, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bSensor, ptr %19, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !45
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bSensor, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %18, !llvm.loop !161

28:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #6
  br label %42

29:                                               ; preds = %12
  %30 = load ptr, ptr %7, align 8, !tbaa !162
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %38
  %33 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.bSensor, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 4, !tbaa !45
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !162
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %32, !llvm.loop !163

41:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %7) #6
  br label %42

42:                                               ; preds = %24, %38, %14, %28, %41, %29, %11
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sca_move_controller(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 93
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !164

11:                                               ; preds = %5
  br i1 %8, label %49, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !166
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi ptr [ %16, %18 ], [ %29, %27 ]
  %23 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 4, !tbaa !166
  %25 = and i32 %20, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !165
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %21, !llvm.loop !167

31:                                               ; preds = %21
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef nonnull %7) #6
  br label %49

32:                                               ; preds = %12
  %33 = load ptr, ptr %7, align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 17
  %37 = load i32, ptr %36, align 4, !tbaa !166
  br label %38

38:                                               ; preds = %35, %44
  %39 = phi ptr [ %33, %35 ], [ %45, %44 ]
  %40 = getelementptr inbounds %struct.bController, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !166
  %42 = and i32 %37, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 8, !tbaa !168
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !169

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %39, %38 ], [ %45, %44 ]
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %48, ptr noundef nonnull %7) #6
  br label %49

49:                                               ; preds = %27, %14, %31, %47, %32, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sca_move_actuator(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 94
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !170

11:                                               ; preds = %5
  br i1 %8, label %42, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bActuator, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %26, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bActuator, ptr %19, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !91
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bActuator, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !171
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %18, !llvm.loop !172

28:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #6
  br label %42

29:                                               ; preds = %12
  %30 = load ptr, ptr %7, align 8, !tbaa !173
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %38
  %33 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.bActuator, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !91
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !173
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %32, !llvm.loop !174

41:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %7) #6
  br label %42

42:                                               ; preds = %24, %38, %14, %28, %41, %29, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @link_logicbricks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %2, align 2, !tbaa !66
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = zext nneg i16 %5 to i64
  %9 = load ptr, ptr %1, align 8, !tbaa !40
  %10 = load ptr, ptr %0, align 8, !tbaa !40
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %8
  br i1 %13, label %19, label %14, !llvm.loop !175

14:                                               ; preds = %7, %11
  %15 = phi i64 [ 0, %7 ], [ %12, %11 ]
  %16 = getelementptr inbounds ptr, ptr %9, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %56, label %11

19:                                               ; preds = %11, %4
  %20 = load ptr, ptr %1, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = add i16 %5, 1
  store i16 %23, ptr %2, align 2, !tbaa !66
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %25 = sext i16 %23 to i64
  %26 = sext i16 %3 to i64
  %27 = mul nsw i64 %25, %26
  %28 = tail call ptr %24(i64 noundef %27, ptr noundef nonnull @.str.41) #6
  store ptr %28, ptr %1, align 8, !tbaa !40
  %29 = load i16, ptr %2, align 2, !tbaa !66
  %30 = icmp sgt i16 %29, 1
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = zext nneg i16 %29 to i64
  %33 = add nuw nsw i64 %32, 4294967295
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %41, %35 ]
  %37 = getelementptr inbounds ptr, ptr %20, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = load ptr, ptr %1, align 8, !tbaa !40
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  store ptr %38, ptr %40, align 8, !tbaa !40
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %43, label %35, !llvm.loop !176

43:                                               ; preds = %35
  %44 = and i64 %41, 4294967295
  br label %45

45:                                               ; preds = %43, %22
  %46 = phi i64 [ 0, %22 ], [ %44, %43 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !40
  %48 = load ptr, ptr %1, align 8, !tbaa !40
  %49 = getelementptr inbounds ptr, ptr %48, i64 %46
  store ptr %47, ptr %49, align 8, !tbaa !40
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %50(ptr noundef nonnull %20) #6
  br label %56

51:                                               ; preds = %19
  store i16 1, ptr %2, align 2, !tbaa !66
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %53 = sext i16 %3 to i64
  %54 = tail call ptr %52(i64 noundef %53, ptr noundef nonnull @.str.41) #6
  store ptr %54, ptr %1, align 8, !tbaa !40
  %55 = load ptr, ptr %0, align 8, !tbaa !40
  store ptr %55, ptr %54, align 8, !tbaa !40
  br label %56

56:                                               ; preds = %14, %51, %45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @sca_state_name_get(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = zext nneg i16 %1 to i32
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !166
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !177

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bController, ptr %8, i64 0, i32 11
  br label %17

17:                                               ; preds = %6, %15
  %18 = phi ptr [ %16, %15 ], [ null, %6 ]
  ret ptr %18
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !36, i64 104}
!35 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 96}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!35, !39, i64 20}
!46 = distinct !{!46, !43, !44}
!47 = !{!35, !39, i64 22}
!48 = !{!35, !39, i64 16}
!49 = !{!50, !51, i64 64}
!50 = !{!"bNearSensor", !37, i64 0, !51, i64 64, !51, i64 68, !52, i64 72, !52, i64 76}
!51 = !{!"float", !37, i64 0}
!52 = !{!"int", !37, i64 0}
!53 = !{!50, !51, i64 68}
!54 = !{!55, !39, i64 0}
!55 = !{!"bMouseSensor", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 72}
!56 = !{!57, !51, i64 64}
!57 = !{!"bRaySensor", !37, i64 0, !51, i64 64, !37, i64 68, !37, i64 132, !39, i64 196, !39, i64 198, !52, i64 200}
!58 = !{!59, !52, i64 84}
!59 = !{!"bJoystickSensor", !37, i64 0, !37, i64 64, !37, i64 65, !39, i64 66, !39, i64 68, !39, i64 70, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84, !52, i64 88}
!60 = !{!59, !39, i64 68}
!61 = !{!59, !52, i64 80}
!62 = !{!63, !36, i64 0}
!63 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !64, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!64 = !{!"ListBase", !36, i64 0, !36, i64 8}
!65 = distinct !{!65, !43, !44}
!66 = !{!39, !39, i64 0}
!67 = distinct !{!67, !43, !44}
!68 = distinct !{!68, !43, !44}
!69 = distinct !{!69, !43, !44}
!70 = !{!71, !36, i64 112}
!71 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !39, i64 130, !52, i64 132}
!72 = !{!71, !36, i64 104}
!73 = !{!71, !36, i64 120}
!74 = distinct !{!74, !43, !44}
!75 = !{!71, !36, i64 16}
!76 = !{!71, !39, i64 26}
!77 = !{!71, !39, i64 34}
!78 = distinct !{!78, !43, !44}
!79 = !{!71, !39, i64 24}
!80 = distinct !{!80, !43, !44}
!81 = distinct !{!81, !43, !44}
!82 = distinct !{!82, !43, !44}
!83 = !{!84, !36, i64 96}
!84 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!85 = !{!84, !39, i64 24}
!86 = !{!87, !36, i64 24}
!87 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !52, i64 4, !52, i64 8, !37, i64 12, !51, i64 16, !51, i64 20, !36, i64 24, !88, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!88 = !{!"Sound3D", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28}
!89 = distinct !{!89, !43, !44}
!90 = !{!84, !36, i64 16}
!91 = !{!84, !39, i64 26}
!92 = distinct !{!92, !43, !44}
!93 = !{!87, !51, i64 16}
!94 = !{!87, !51, i64 48}
!95 = !{!87, !51, i64 40}
!96 = !{!87, !51, i64 36}
!97 = !{!87, !51, i64 52}
!98 = !{!87, !51, i64 56}
!99 = !{!87, !51, i64 44}
!100 = !{!101, !39, i64 0}
!101 = !{!"bObjectActuator", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 20, !37, i64 32, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !36, i64 104}
!102 = !{!103, !39, i64 26}
!103 = !{!"bCameraActuator", !36, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !39, i64 24, !39, i64 26, !51, i64 28}
!104 = !{!103, !51, i64 20}
!105 = !{!106, !39, i64 120}
!106 = !{!"bEditObjectActuator", !52, i64 0, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !51, i64 112, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !52, i64 124}
!107 = !{!106, !39, i64 122}
!108 = !{!109, !51, i64 16}
!109 = !{!"bRandomActuator", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !51, i64 16, !51, i64 20, !37, i64 24}
!110 = !{!111, !51, i64 136}
!111 = !{!"bArmatureActuator", !37, i64 0, !37, i64 64, !52, i64 128, !51, i64 132, !51, i64 136, !51, i64 140, !36, i64 144, !36, i64 152}
!112 = !{!113, !51, i64 20}
!113 = !{!"bSteeringActuator", !37, i64 0, !37, i64 5, !39, i64 6, !52, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !52, i64 28, !36, i64 32, !36, i64 40}
!114 = !{!113, !51, i64 24}
!115 = !{!113, !51, i64 12}
!116 = !{!113, !51, i64 16}
!117 = !{!113, !37, i64 5}
!118 = !{!113, !39, i64 6}
!119 = !{!120, !39, i64 2}
!120 = !{!"bMouseActuator", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 12, !37, i64 20, !37, i64 28, !37, i64 36}
!121 = !{!51, !51, i64 0}
!122 = !{!52, !52, i64 0}
!123 = distinct !{!123, !43, !44}
!124 = distinct !{!124, !43, !44}
!125 = distinct !{!125, !43, !44}
!126 = distinct !{!126, !43, !44}
!127 = !{!35, !39, i64 26}
!128 = distinct !{!128, !43, !44}
!129 = distinct !{!129, !43, !44}
!130 = !{!71, !39, i64 30}
!131 = distinct !{!131, !43, !44}
!132 = distinct !{!132, !43, !44}
!133 = !{!106, !36, i64 8}
!134 = !{!135, !36, i64 16}
!135 = !{!"Object", !136, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !137, i64 312, !36, i64 360, !64, i64 368, !64, i64 384, !64, i64 400, !64, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !51, i64 616, !51, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !51, i64 1048, !51, i64 1052, !64, i64 1056, !64, i64 1072, !64, i64 1088, !64, i64 1104, !51, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !64, i64 1176, !64, i64 1192, !64, i64 1208, !64, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !51, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !138, i64 1304, !138, i64 1312, !52, i64 1320, !52, i64 1324, !64, i64 1328, !64, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !64, i64 1400, !36, i64 1416}
!136 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!137 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!138 = !{!"long", !37, i64 0}
!139 = !{!140, !36, i64 16}
!140 = !{!"bSceneActuator", !39, i64 0, !39, i64 2, !52, i64 4, !36, i64 8, !36, i64 16}
!141 = !{!103, !36, i64 0}
!142 = !{!101, !36, i64 104}
!143 = !{!144, !36, i64 64}
!144 = !{!"bMessageActuator", !37, i64 0, !36, i64 64, !37, i64 72, !39, i64 136, !39, i64 138, !52, i64 140, !37, i64 144}
!145 = !{!146, !36, i64 8}
!146 = !{!"bParentActuator", !37, i64 0, !39, i64 2, !52, i64 4, !36, i64 8}
!147 = !{!111, !36, i64 144}
!148 = !{!111, !36, i64 152}
!149 = !{!150, !36, i64 136}
!150 = !{!"bPropertyActuator", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !36, i64 136}
!151 = !{!113, !36, i64 40}
!152 = !{!113, !36, i64 32}
!153 = distinct !{!153, !43, !44}
!154 = distinct !{!154, !43, !44}
!155 = !{!156, !36, i64 0}
!156 = !{!"bMessageSensor", !36, i64 0, !37, i64 8, !37, i64 72}
!157 = distinct !{!157, !43, !44}
!158 = distinct !{!158, !43, !44}
!159 = distinct !{!159, !43, !44}
!160 = !{!35, !36, i64 8}
!161 = distinct !{!161, !43, !44}
!162 = !{!35, !36, i64 0}
!163 = distinct !{!163, !43, !44}
!164 = distinct !{!164, !43, !44}
!165 = !{!71, !36, i64 8}
!166 = !{!71, !52, i64 132}
!167 = distinct !{!167, !43, !44}
!168 = !{!71, !36, i64 0}
!169 = distinct !{!169, !43, !44}
!170 = distinct !{!170, !43, !44}
!171 = !{!84, !36, i64 8}
!172 = distinct !{!172, !43, !44}
!173 = !{!84, !36, i64 0}
!174 = distinct !{!174, !43, !44}
!175 = distinct !{!175, !43, !44}
!176 = distinct !{!176, !43, !44}
!177 = distinct !{!177, !43, !44}
