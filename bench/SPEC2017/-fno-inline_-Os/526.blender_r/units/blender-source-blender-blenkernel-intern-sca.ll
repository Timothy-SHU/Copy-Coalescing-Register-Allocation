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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %14(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sensors(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @free_sensor(ptr noundef nonnull %5) #7
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !42

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_sensor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !44
  %6 = or i16 %5, 4
  store i16 %6, ptr %4, align 4, !tbaa !44
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_sensors(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @copy_sensor(ptr noundef nonnull %6) #7
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %7) #6
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !45

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  store i16 0, ptr %8, align 2, !tbaa !46
  %9 = getelementptr inbounds %struct.bSensor, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !47
  switch i16 %10, label %55 [
    i16 11, label %49
    i16 2, label %11
    i16 3, label %15
    i16 4, label %18
    i16 14, label %21
    i16 12, label %24
    i16 13, label %27
    i16 5, label %30
    i16 6, label %33
    i16 7, label %36
    i16 8, label %39
    i16 9, label %42
    i16 10, label %46
  ]

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %13 = tail call ptr %12(i64 noundef 80, ptr noundef nonnull @.str) #6
  store ptr %13, ptr %2, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.bNearSensor, ptr %13, i64 0, i32 1
  store <2 x float> <float 1.000000e+00, float 2.000000e+00>, ptr %14, align 4, !tbaa !48
  br label %55

15:                                               ; preds = %7
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %17 = tail call ptr %16(i64 noundef 136, ptr noundef nonnull @.str.1) #6
  store ptr %17, ptr %2, align 8, !tbaa !41
  br label %55

18:                                               ; preds = %7
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %20 = tail call ptr %19(i64 noundef 200, ptr noundef nonnull @.str.2) #6
  store ptr %20, ptr %2, align 8, !tbaa !41
  br label %55

21:                                               ; preds = %7
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %23 = tail call ptr %22(i64 noundef 136, ptr noundef nonnull @.str.3) #6
  store ptr %23, ptr %2, align 8, !tbaa !41
  br label %55

24:                                               ; preds = %7
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %26 = tail call ptr %25(i64 noundef 72, ptr noundef nonnull @.str.4) #6
  store ptr %26, ptr %2, align 8, !tbaa !41
  br label %55

27:                                               ; preds = %7
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %29 = tail call ptr %28(i64 noundef 8, ptr noundef nonnull @.str.5) #6
  store ptr %29, ptr %2, align 8, !tbaa !41
  br label %55

30:                                               ; preds = %7
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %32 = tail call ptr %31(i64 noundef 136, ptr noundef nonnull @.str.6) #6
  store ptr %32, ptr %2, align 8, !tbaa !41
  store i16 1, ptr %32, align 2, !tbaa !50
  br label %55

33:                                               ; preds = %7
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %35 = tail call ptr %34(i64 noundef 136, ptr noundef nonnull @.str.7) #6
  store ptr %35, ptr %2, align 8, !tbaa !41
  br label %55

36:                                               ; preds = %7
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %38 = tail call ptr %37(i64 noundef 76, ptr noundef nonnull @.str.8) #6
  store ptr %38, ptr %2, align 8, !tbaa !41
  br label %55

39:                                               ; preds = %7
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %41 = tail call ptr %40(i64 noundef 72, ptr noundef nonnull @.str.9) #6
  store ptr %41, ptr %2, align 8, !tbaa !41
  br label %55

42:                                               ; preds = %7
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %44 = tail call ptr %43(i64 noundef 204, ptr noundef nonnull @.str.10) #6
  store ptr %44, ptr %2, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct.bRaySensor, ptr %44, i64 0, i32 1
  store float 0x3F847AE140000000, ptr %45, align 4, !tbaa !52
  br label %55

46:                                               ; preds = %7
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %48 = tail call ptr %47(i64 noundef 136, ptr noundef nonnull @.str.11) #6
  store ptr %48, ptr %2, align 8, !tbaa !41
  br label %55

49:                                               ; preds = %7
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %51 = tail call ptr %50(i64 noundef 92, ptr noundef nonnull @.str.12) #6
  store ptr %51, ptr %2, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.bJoystickSensor, ptr %51, i64 0, i32 9
  store i32 1, ptr %52, align 4, !tbaa !55
  %53 = getelementptr inbounds %struct.bJoystickSensor, ptr %51, i64 0, i32 4
  store i16 1, ptr %53, align 4, !tbaa !57
  %54 = getelementptr inbounds %struct.bJoystickSensor, ptr %51, i64 0, i32 8
  store i32 1, ptr %54, align 4, !tbaa !58
  br label %55

55:                                               ; preds = %7, %49, %46, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_sensor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.13) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 2
  store i16 %4, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 4, !tbaa !44
  tail call void @init_sensor(ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.bSensor, ptr %3, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %7, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false) #6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !40
  %3 = load ptr, ptr @G, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %10

7:                                                ; preds = %15, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10, !llvm.loop !62

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 92
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.bSensor, ptr %16, i64 0, i32 12
  %18 = getelementptr inbounds %struct.bSensor, ptr %16, i64 0, i32 7
  call void @unlink_logicbricks(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %18) #7
  %19 = load ptr, ptr %16, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %7, label %15, !llvm.loop !63

21:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_logicbricks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %2, align 2, !tbaa !64
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = zext nneg i16 %4 to i64
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %10 = phi i32 [ 0, %6 ], [ %23, %21 ]
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %1, align 8, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %12, i64 %9
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  br i1 %11, label %15, label %24

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8, !tbaa !40
  %17 = icmp eq ptr %14, %16
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %24
  %22 = phi i64 [ %19, %15 ], [ %26, %24 ]
  %23 = phi i32 [ %18, %15 ], [ 1, %24 ]
  br label %8, !llvm.loop !65

24:                                               ; preds = %8
  %25 = getelementptr ptr, ptr %13, i64 -1
  store ptr %14, ptr %25, align 8, !tbaa !40
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, %7
  br i1 %27, label %29, label %21

28:                                               ; preds = %15
  br i1 %17, label %29, label %35

29:                                               ; preds = %24, %28
  %30 = add nsw i16 %4, -1
  store i16 %30, ptr %2, align 2, !tbaa !64
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %34 = load ptr, ptr %1, align 8, !tbaa !40
  tail call void %33(ptr noundef %34) #6
  store ptr null, ptr %1, align 8, !tbaa !40
  br label %35

35:                                               ; preds = %3, %28, %29, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_controllers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @unlink_controller(ptr noundef nonnull %5) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !66

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %12(ptr noundef nonnull %9) #6
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_controllers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bController, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %10(ptr noundef nonnull %7) #6
  br label %11

11:                                               ; preds = %9, %4
  tail call void @free_controller(ptr noundef nonnull %5) #7
  %12 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !71

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !73
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !73
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(ptr noundef nonnull %9) #6
  %14 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 12
  store ptr %13, ptr %14, align 8, !tbaa !69
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %21 = tail call ptr %20(ptr noundef nonnull %17) #6
  %22 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 13
  store ptr %21, ptr %22, align 8, !tbaa !67
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 14
  store ptr null, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 8
  store i16 0, ptr %25, align 2, !tbaa !74
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_controllers(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @copy_controller(ptr noundef nonnull %6) #7
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %7) #6
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !75

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_controller(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.bController, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !76
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
  store ptr %17, ptr %2, align 8, !tbaa !69
  br label %18

18:                                               ; preds = %16, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_controller(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 136, ptr noundef nonnull @.str.17) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 2, !tbaa !73
  tail call void @init_controller(ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.bController, ptr %3, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false) #6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_actuator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !40
  %3 = load ptr, ptr @G, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %10

7:                                                ; preds = %15, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10, !llvm.loop !77

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 93
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.bController, ptr %16, i64 0, i32 13
  %18 = getelementptr inbounds %struct.bController, ptr %16, i64 0, i32 6
  call void @unlink_logicbricks(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %18) #7
  %19 = load ptr, ptr %16, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %7, label %15, !llvm.loop !78

21:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_actuators(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @unlink_actuator(ptr noundef nonnull %5) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !79

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_actuator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bSoundActuator, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #6
  %14 = load ptr, ptr %2, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %9, %13, %5
  %16 = phi ptr [ %3, %9 ], [ %14, %13 ], [ %3, %5 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %17(ptr noundef %16) #6
  br label %18

18:                                               ; preds = %15, %1
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %19(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_actuators(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @free_actuator(ptr noundef nonnull %5) #7
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !86

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_actuator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !88
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !88
  %8 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(ptr noundef nonnull %9) #6
  %14 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !82
  %18 = icmp eq i16 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.bSoundActuator, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @id_us_plus(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %19, %24, %15
  ret ptr %3
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_actuators(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @copy_actuator(ptr noundef nonnull %6) #7
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %7) #6
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !89

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_actuator(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.bActuator, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !82
  switch i16 %9, label %87 [
    i16 15, label %10
    i16 21, label %10
    i16 5, label %13
    i16 0, label %19
    i16 1, label %22
    i16 6, label %25
    i16 3, label %28
    i16 10, label %33
    i16 9, label %38
    i16 11, label %41
    i16 12, label %44
    i16 13, label %47
    i16 14, label %51
    i16 17, label %54
    i16 18, label %57
    i16 19, label %60
    i16 20, label %63
    i16 22, label %66
    i16 23, label %69
    i16 24, label %73
    i16 25, label %79
  ]

10:                                               ; preds = %7, %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %12 = tail call ptr %11(i64 noundef 168, ptr noundef nonnull @.str.19) #6
  store ptr %12, ptr %2, align 8, !tbaa !80
  br label %87

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %15 = tail call ptr %14(i64 noundef 72, ptr noundef nonnull @.str.20) #6
  store ptr %15, ptr %2, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 5
  store float 1.000000e+00, ptr %16, align 8, !tbaa !90
  %17 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 1
  %18 = getelementptr inbounds %struct.bSoundActuator, ptr %15, i64 0, i32 8, i32 5
  store <2 x float> <float 0x401921FB60000000, float 0x401921FB60000000>, ptr %18, align 4, !tbaa !48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00>, ptr %17, align 4, !tbaa !48
  br label %87

19:                                               ; preds = %7
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %21 = tail call ptr %20(i64 noundef 112, ptr noundef nonnull @.str.21) #6
  store ptr %21, ptr %2, align 8, !tbaa !80
  store i16 15, ptr %21, align 8, !tbaa !91
  br label %87

22:                                               ; preds = %7
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %24 = tail call ptr %23(i64 noundef 148, ptr noundef nonnull @.str.22) #6
  store ptr %24, ptr %2, align 8, !tbaa !80
  br label %87

25:                                               ; preds = %7
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %27 = tail call ptr %26(i64 noundef 144, ptr noundef nonnull @.str.23) #6
  store ptr %27, ptr %2, align 8, !tbaa !80
  br label %87

28:                                               ; preds = %7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %30 = tail call ptr %29(i64 noundef 32, ptr noundef nonnull @.str.24) #6
  store ptr %30, ptr %2, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.bCameraActuator, ptr %30, i64 0, i32 6
  store i16 0, ptr %31, align 2, !tbaa !93
  %32 = getelementptr inbounds %struct.bCameraActuator, ptr %30, i64 0, i32 4
  store float 3.125000e-02, ptr %32, align 4, !tbaa !95
  br label %87

33:                                               ; preds = %7
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %35 = tail call ptr %34(i64 noundef 128, ptr noundef nonnull @.str.25) #6
  store ptr %35, ptr %2, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.bEditObjectActuator, ptr %35, i64 0, i32 11
  store i16 2, ptr %36, align 8, !tbaa !96
  %37 = getelementptr inbounds %struct.bEditObjectActuator, ptr %35, i64 0, i32 12
  store i16 1, ptr %37, align 2, !tbaa !98
  br label %87

38:                                               ; preds = %7
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %40 = tail call ptr %39(i64 noundef 128, ptr noundef nonnull @.str.26) #6
  store ptr %40, ptr %2, align 8, !tbaa !80
  br label %87

41:                                               ; preds = %7
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %43 = tail call ptr %42(i64 noundef 24, ptr noundef nonnull @.str.27) #6
  store ptr %43, ptr %2, align 8, !tbaa !80
  br label %87

44:                                               ; preds = %7
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %46 = tail call ptr %45(i64 noundef 88, ptr noundef nonnull @.str.28) #6
  store ptr %46, ptr %2, align 8, !tbaa !80
  br label %87

47:                                               ; preds = %7
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %49 = tail call ptr %48(i64 noundef 88, ptr noundef nonnull @.str.29) #6
  store ptr %49, ptr %2, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct.bRandomActuator, ptr %49, i64 0, i32 4
  store float 0x3FB99999A0000000, ptr %50, align 4, !tbaa !99
  br label %87

51:                                               ; preds = %7
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %53 = tail call ptr %52(i64 noundef 208, ptr noundef nonnull @.str.30) #6
  store ptr %53, ptr %2, align 8, !tbaa !80
  br label %87

54:                                               ; preds = %7
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %56 = tail call ptr %55(i64 noundef 140, ptr noundef nonnull @.str.31) #6
  store ptr %56, ptr %2, align 8, !tbaa !80
  br label %87

57:                                               ; preds = %7
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %59 = tail call ptr %58(i64 noundef 4, ptr noundef nonnull @.str.32) #6
  store ptr %59, ptr %2, align 8, !tbaa !80
  br label %87

60:                                               ; preds = %7
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %62 = tail call ptr %61(i64 noundef 24, ptr noundef nonnull @.str.33) #6
  store ptr %62, ptr %2, align 8, !tbaa !80
  br label %87

63:                                               ; preds = %7
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %65 = tail call ptr %64(i64 noundef 16, ptr noundef nonnull @.str.34) #6
  store ptr %65, ptr %2, align 8, !tbaa !80
  br label %87

66:                                               ; preds = %7
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %68 = tail call ptr %67(i64 noundef 8, ptr noundef nonnull @.str.35) #6
  store ptr %68, ptr %2, align 8, !tbaa !80
  br label %87

69:                                               ; preds = %7
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %71 = tail call ptr %70(i64 noundef 160, ptr noundef nonnull @.str.36) #6
  store ptr %71, ptr %2, align 8, !tbaa !80
  %72 = getelementptr inbounds %struct.bArmatureActuator, ptr %71, i64 0, i32 4
  store float 1.000000e+00, ptr %72, align 8, !tbaa !101
  br label %87

73:                                               ; preds = %7
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %75 = tail call ptr %74(i64 noundef 48, ptr noundef nonnull @.str.37) #6
  store ptr %75, ptr %2, align 8, !tbaa !80
  %76 = getelementptr inbounds %struct.bSteeringActuator, ptr %75, i64 0, i32 4
  store <4 x float> <float 1.000000e+00, float 3.000000e+00, float 3.000000e+00, float 1.200000e+02>, ptr %76, align 4, !tbaa !48
  %77 = getelementptr inbounds %struct.bSteeringActuator, ptr %75, i64 0, i32 1
  store i8 4, ptr %77, align 1, !tbaa !103
  %78 = getelementptr inbounds %struct.bSteeringActuator, ptr %75, i64 0, i32 2
  store i16 1, ptr %78, align 2, !tbaa !105
  br label %87

79:                                               ; preds = %7
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %81 = tail call ptr %80(i64 noundef 44, ptr noundef nonnull @.str.38) #6
  store ptr %81, ptr %2, align 8, !tbaa !80
  %82 = getelementptr inbounds %struct.bMouseActuator, ptr %81, i64 0, i32 1
  store i16 95, ptr %82, align 2, !tbaa !106
  %83 = getelementptr inbounds %struct.bMouseActuator, ptr %81, i64 0, i32 4
  store <2 x float> <float 2.000000e+00, float 2.000000e+00>, ptr %83, align 4, !tbaa !48
  %84 = getelementptr inbounds %struct.bMouseActuator, ptr %81, i64 0, i32 2
  store i32 2, ptr %84, align 4, !tbaa !108
  %85 = getelementptr inbounds %struct.bMouseActuator, ptr %81, i64 0, i32 2, i64 1
  store i32 0, ptr %85, align 4, !tbaa !108
  %86 = getelementptr inbounds %struct.bMouseActuator, ptr %81, i64 0, i32 6
  store <2 x float> <float 0xBFF921FB60000000, float 0x3FF921FB60000000>, ptr %86, align 4, !tbaa !48
  br label %87

87:                                               ; preds = %7, %79, %73, %69, %66, %63, %60, %57, %54, %51, %47, %44, %41, %38, %33, %28, %25, %22, %19, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_actuator(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @.str.39) #6
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 4
  store i16 1, ptr %6, align 2, !tbaa !88
  tail call void @init_actuator(ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.bActuator, ptr %3, i64 0, i32 7
  store i32 7627617, ptr %7, align 1
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_sca_new_poins_ob(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 4, !tbaa !44
  %9 = and i16 %8, -5
  store i16 %9, ptr %7, align 4, !tbaa !44
  %10 = load ptr, ptr %6, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !109

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.bController, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.bController, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !73
  %21 = and i16 %20, -5
  store i16 %21, ptr %19, align 2, !tbaa !73
  %22 = load ptr, ptr %17, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !110

24:                                               ; preds = %16, %12
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %34, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bActuator, ptr %29, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.bActuator, ptr %29, i64 0, i32 4
  %32 = load i16, ptr %31, align 2, !tbaa !88
  %33 = and i16 %32, -5
  store i16 %33, ptr %31, align 2, !tbaa !88
  %34 = load ptr, ptr %29, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !111

36:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_sca_new_poins() local_unnamed_addr #2 {
  %1 = load ptr, ptr @G, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @clear_sca_new_poins_ob(ptr noundef nonnull %6) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !112

9:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_sca_new_poins_ob(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %32
  %6 = phi ptr [ %33, %32 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 4, !tbaa !44
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !113
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
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store ptr %26, ptr %21, align 8, !tbaa !40
  br label %29

29:                                               ; preds = %18, %24, %28
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, %16
  br i1 %31, label %32, label %18, !llvm.loop !114

32:                                               ; preds = %29, %11, %5
  %33 = load ptr, ptr %6, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !115

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %35, %66
  %40 = phi ptr [ %67, %66 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !73
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 6
  %47 = load i16, ptr %46, align 2, !tbaa !116
  %48 = icmp sgt i16 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = zext nneg i16 %47 to i64
  %51 = getelementptr inbounds %struct.bController, ptr %40, i64 0, i32 13
  br label %52

52:                                               ; preds = %49, %63
  %53 = phi i64 [ 0, %49 ], [ %64, %63 ]
  %54 = load ptr, ptr %51, align 8, !tbaa !67
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.bActuator, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store ptr %60, ptr %55, align 8, !tbaa !40
  br label %63

63:                                               ; preds = %52, %58, %62
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, %50
  br i1 %65, label %66, label %52, !llvm.loop !117

66:                                               ; preds = %63, %45, %39
  %67 = load ptr, ptr %40, align 8, !tbaa !40
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %39, !llvm.loop !118

69:                                               ; preds = %66, %35
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %71 = load ptr, ptr %70, align 8, !tbaa !40
  %72 = icmp eq ptr %71, null
  br i1 %72, label %201, label %73

73:                                               ; preds = %69, %198
  %74 = phi ptr [ %199, %198 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 4
  %76 = load i16, ptr %75, align 2, !tbaa !88
  %77 = and i16 %76, 4
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %198, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 3
  %81 = load i16, ptr %80, align 8, !tbaa !82
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
  %84 = load ptr, ptr %83, align 8, !tbaa !80
  %85 = getelementptr inbounds %struct.bEditObjectActuator, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !119
  %87 = icmp eq ptr %86, null
  br i1 %87, label %198, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ID, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !120
  %91 = icmp eq ptr %90, null
  br i1 %91, label %198, label %92

92:                                               ; preds = %88
  store ptr %90, ptr %85, align 8, !tbaa !119
  br label %198

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = getelementptr inbounds %struct.bSceneActuator, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !125
  %98 = icmp eq ptr %97, null
  br i1 %98, label %198, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !120
  %102 = icmp eq ptr %101, null
  br i1 %102, label %198, label %103

103:                                              ; preds = %99
  store ptr %101, ptr %96, align 8, !tbaa !125
  br label %198

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !80
  %107 = load ptr, ptr %106, align 8, !tbaa !127
  %108 = icmp eq ptr %107, null
  br i1 %108, label %198, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !120
  %112 = icmp eq ptr %111, null
  br i1 %112, label %198, label %113

113:                                              ; preds = %109
  store ptr %111, ptr %106, align 8, !tbaa !127
  br label %198

114:                                              ; preds = %79
  %115 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !80
  %117 = getelementptr inbounds %struct.bObjectActuator, ptr %116, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !128
  %119 = icmp eq ptr %118, null
  br i1 %119, label %198, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ID, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !120
  %123 = icmp eq ptr %122, null
  br i1 %123, label %198, label %124

124:                                              ; preds = %120
  store ptr %122, ptr %117, align 8, !tbaa !128
  br label %198

125:                                              ; preds = %79
  %126 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !80
  %128 = getelementptr inbounds %struct.bMessageActuator, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = icmp eq ptr %129, null
  br i1 %130, label %198, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.ID, ptr %129, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !120
  %134 = icmp eq ptr %133, null
  br i1 %134, label %198, label %135

135:                                              ; preds = %131
  store ptr %133, ptr %128, align 8, !tbaa !129
  br label %198

136:                                              ; preds = %79
  %137 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !80
  %139 = getelementptr inbounds %struct.bParentActuator, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !131
  %141 = icmp eq ptr %140, null
  br i1 %141, label %198, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.ID, ptr %140, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !120
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %146

146:                                              ; preds = %142
  store ptr %144, ptr %139, align 8, !tbaa !131
  br label %198

147:                                              ; preds = %79
  %148 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %149 = load ptr, ptr %148, align 8, !tbaa !80
  %150 = getelementptr inbounds %struct.bArmatureActuator, ptr %149, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !133
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ID, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !120
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store ptr %155, ptr %150, align 8, !tbaa !133
  br label %158

158:                                              ; preds = %157, %153, %147
  %159 = getelementptr inbounds %struct.bArmatureActuator, ptr %149, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !134
  %161 = icmp eq ptr %160, null
  br i1 %161, label %198, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ID, ptr %160, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !120
  %165 = icmp eq ptr %164, null
  br i1 %165, label %198, label %166

166:                                              ; preds = %162
  store ptr %164, ptr %159, align 8, !tbaa !134
  br label %198

167:                                              ; preds = %79
  %168 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !80
  %170 = getelementptr inbounds %struct.bPropertyActuator, ptr %169, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !135
  %172 = icmp eq ptr %171, null
  br i1 %172, label %198, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.ID, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !120
  %176 = icmp eq ptr %175, null
  br i1 %176, label %198, label %177

177:                                              ; preds = %173
  store ptr %175, ptr %170, align 8, !tbaa !135
  br label %198

178:                                              ; preds = %79
  %179 = getelementptr inbounds %struct.bActuator, ptr %74, i64 0, i32 8
  %180 = load ptr, ptr %179, align 8, !tbaa !80
  %181 = getelementptr inbounds %struct.bSteeringActuator, ptr %180, i64 0, i32 10
  %182 = load ptr, ptr %181, align 8, !tbaa !137
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.ID, ptr %182, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !120
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store ptr %186, ptr %181, align 8, !tbaa !137
  br label %189

189:                                              ; preds = %188, %184, %178
  %190 = getelementptr inbounds %struct.bSteeringActuator, ptr %180, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !138
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ID, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !120
  %196 = icmp eq ptr %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  store ptr %195, ptr %190, align 8, !tbaa !138
  br label %198

198:                                              ; preds = %189, %193, %197, %79, %167, %173, %177, %158, %162, %166, %136, %142, %146, %125, %131, %135, %114, %120, %124, %104, %109, %113, %93, %99, %103, %82, %88, %92, %73
  %199 = load ptr, ptr %74, align 8, !tbaa !40
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %73, !llvm.loop !139

201:                                              ; preds = %198, %69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_sca_new_poins() local_unnamed_addr #2 {
  %1 = load ptr, ptr @G, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @set_sca_new_poins_ob(ptr noundef nonnull %6) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !140

9:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sca_remove_ob_poin(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store ptr null, ptr %13, align 8, !tbaa !141
  br label %17

17:                                               ; preds = %11, %16, %6
  %18 = load ptr, ptr %7, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !143

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %96, label %24

24:                                               ; preds = %20, %93
  %25 = phi ptr [ %94, %93 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !82
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
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = load ptr, ptr %30, align 8, !tbaa !127
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %91, label %93

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.bObjectActuator, ptr %35, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %91, label %93

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.bPropertyActuator, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !135
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %91, label %93

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.bSceneActuator, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !125
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %91, label %93

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds %struct.bEditObjectActuator, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %91, label %93

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = getelementptr inbounds %struct.bMessageActuator, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !129
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %91, label %93

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !80
  %66 = getelementptr inbounds %struct.bParentActuator, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !131
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %91, label %93

69:                                               ; preds = %24
  %70 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !80
  %72 = getelementptr inbounds %struct.bArmatureActuator, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !133
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store ptr null, ptr %72, align 8, !tbaa !133
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.bArmatureActuator, ptr %71, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !134
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %91, label %93

80:                                               ; preds = %24
  %81 = getelementptr inbounds %struct.bActuator, ptr %25, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !80
  %83 = getelementptr inbounds %struct.bSteeringActuator, ptr %82, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !137
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store ptr null, ptr %83, align 8, !tbaa !137
  br label %87

87:                                               ; preds = %86, %80
  %88 = getelementptr inbounds %struct.bSteeringActuator, ptr %82, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !138
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %76, %63, %57, %51, %45, %39, %33, %28
  %92 = phi ptr [ %30, %28 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ], [ %66, %63 ], [ %77, %76 ], [ %88, %87 ]
  store ptr null, ptr %92, align 8, !tbaa !40
  br label %93

93:                                               ; preds = %91, %87, %76, %63, %57, %51, %45, %39, %33, %28, %24
  %94 = load ptr, ptr %25, align 8, !tbaa !40
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %24, !llvm.loop !144

96:                                               ; preds = %93, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sca_move_sensor(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 92
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !145

11:                                               ; preds = %5
  br i1 %8, label %42, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bSensor, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %26, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bSensor, ptr %19, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !44
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bSensor, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !146
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %18, !llvm.loop !147

28:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #6
  br label %42

29:                                               ; preds = %12
  %30 = load ptr, ptr %7, align 8, !tbaa !148
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %38
  %33 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.bSensor, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 4, !tbaa !44
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !148
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %32, !llvm.loop !149

41:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %7) #6
  br label %42

42:                                               ; preds = %24, %38, %14, %28, %41, %29, %11
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sca_move_controller(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 93
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !150

11:                                               ; preds = %5
  br i1 %8, label %49, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !152
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi ptr [ %16, %18 ], [ %29, %27 ]
  %23 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 4, !tbaa !152
  %25 = and i32 %20, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bController, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !151
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %21, !llvm.loop !153

31:                                               ; preds = %21
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef nonnull %7) #6
  br label %49

32:                                               ; preds = %12
  %33 = load ptr, ptr %7, align 8, !tbaa !154
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.bController, ptr %7, i64 0, i32 17
  %37 = load i32, ptr %36, align 4, !tbaa !152
  br label %38

38:                                               ; preds = %35, %44
  %39 = phi ptr [ %33, %35 ], [ %45, %44 ]
  %40 = getelementptr inbounds %struct.bController, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !152
  %42 = and i32 %37, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 8, !tbaa !154
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !155

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %39, %38 ], [ null, %44 ]
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %48, ptr noundef nonnull %7) #6
  br label %49

49:                                               ; preds = %27, %14, %31, %47, %32, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sca_move_actuator(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 94
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !156

11:                                               ; preds = %5
  br i1 %8, label %42, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bActuator, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %26, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bActuator, ptr %19, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !88
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bActuator, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !157
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %18, !llvm.loop !158

28:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #6
  br label %42

29:                                               ; preds = %12
  %30 = load ptr, ptr %7, align 8, !tbaa !159
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %38
  %33 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.bActuator, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !88
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !159
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %32, !llvm.loop !160

41:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %7) #6
  br label %42

42:                                               ; preds = %24, %38, %14, %28, %41, %29, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @link_logicbricks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %2, align 2, !tbaa !64
  %6 = icmp sgt i16 %5, 0
  %7 = load ptr, ptr %1, align 8, !tbaa !40
  br i1 %6, label %8, label %19

8:                                                ; preds = %4
  %9 = zext nneg i16 %5 to i64
  %10 = load ptr, ptr %0, align 8, !tbaa !40
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %21, label %14, !llvm.loop !161

14:                                               ; preds = %8, %11
  %15 = phi i64 [ 0, %8 ], [ %12, %11 ]
  %16 = getelementptr inbounds ptr, ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %56, label %11

19:                                               ; preds = %4
  %20 = icmp eq ptr %7, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %11, %19
  %22 = add i16 %5, 1
  store i16 %22, ptr %2, align 2, !tbaa !64
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %24 = sext i16 %22 to i64
  %25 = sext i16 %3 to i64
  %26 = mul nsw i64 %24, %25
  %27 = tail call ptr %23(i64 noundef %26, ptr noundef nonnull @.str.41) #6
  store ptr %27, ptr %1, align 8, !tbaa !40
  %28 = load i16, ptr %2, align 2, !tbaa !64
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, -1
  %31 = icmp sgt i16 %28, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = zext i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %40, %34 ]
  %36 = getelementptr inbounds ptr, ptr %7, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = load ptr, ptr %1, align 8, !tbaa !40
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  store ptr %37, ptr %39, align 8, !tbaa !40
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %42, label %34, !llvm.loop !162

42:                                               ; preds = %34
  %43 = load ptr, ptr %1, align 8, !tbaa !40
  %44 = zext nneg i32 %30 to i64
  br label %45

45:                                               ; preds = %21, %42
  %46 = phi ptr [ %43, %42 ], [ %27, %21 ]
  %47 = phi i64 [ %44, %42 ], [ 0, %21 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !40
  %49 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %48, ptr %49, align 8, !tbaa !40
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %50(ptr noundef nonnull %7) #6
  br label %56

51:                                               ; preds = %19
  store i16 1, ptr %2, align 2, !tbaa !64
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %12 = load i32, ptr %11, align 4, !tbaa !152
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !163

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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!34 = !{!35, !36, i64 104}
!35 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 96}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!35, !39, i64 20}
!45 = distinct !{!45, !43}
!46 = !{!35, !39, i64 22}
!47 = !{!35, !39, i64 16}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !37, i64 0}
!50 = !{!51, !39, i64 0}
!51 = !{!"bMouseSensor", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 72}
!52 = !{!53, !49, i64 64}
!53 = !{!"bRaySensor", !37, i64 0, !49, i64 64, !37, i64 68, !37, i64 132, !39, i64 196, !39, i64 198, !54, i64 200}
!54 = !{!"int", !37, i64 0}
!55 = !{!56, !54, i64 84}
!56 = !{!"bJoystickSensor", !37, i64 0, !37, i64 64, !37, i64 65, !39, i64 66, !39, i64 68, !39, i64 70, !54, i64 72, !54, i64 76, !54, i64 80, !54, i64 84, !54, i64 88}
!57 = !{!56, !39, i64 68}
!58 = !{!56, !54, i64 80}
!59 = !{!60, !36, i64 0}
!60 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !61, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !54, i64 2096, !54, i64 2100, !37, i64 2104, !54, i64 2108, !54, i64 2112, !37, i64 2116}
!61 = !{!"ListBase", !36, i64 0, !36, i64 8}
!62 = distinct !{!62, !43}
!63 = distinct !{!63, !43}
!64 = !{!39, !39, i64 0}
!65 = distinct !{!65, !43}
!66 = distinct !{!66, !43}
!67 = !{!68, !36, i64 112}
!68 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !39, i64 130, !54, i64 132}
!69 = !{!68, !36, i64 104}
!70 = !{!68, !36, i64 120}
!71 = distinct !{!71, !43}
!72 = !{!68, !36, i64 16}
!73 = !{!68, !39, i64 26}
!74 = !{!68, !39, i64 34}
!75 = distinct !{!75, !43}
!76 = !{!68, !39, i64 24}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43}
!80 = !{!81, !36, i64 96}
!81 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!82 = !{!81, !39, i64 24}
!83 = !{!84, !36, i64 24}
!84 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !54, i64 4, !54, i64 8, !37, i64 12, !49, i64 16, !49, i64 20, !36, i64 24, !85, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!85 = !{!"Sound3D", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!86 = distinct !{!86, !43}
!87 = !{!81, !36, i64 16}
!88 = !{!81, !39, i64 26}
!89 = distinct !{!89, !43}
!90 = !{!84, !49, i64 16}
!91 = !{!92, !39, i64 0}
!92 = !{!"bObjectActuator", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 20, !37, i64 32, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !36, i64 104}
!93 = !{!94, !39, i64 26}
!94 = !{!"bCameraActuator", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !49, i64 28}
!95 = !{!94, !49, i64 20}
!96 = !{!97, !39, i64 120}
!97 = !{!"bEditObjectActuator", !54, i64 0, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !49, i64 112, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !54, i64 124}
!98 = !{!97, !39, i64 122}
!99 = !{!100, !49, i64 16}
!100 = !{!"bRandomActuator", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !49, i64 16, !49, i64 20, !37, i64 24}
!101 = !{!102, !49, i64 136}
!102 = !{!"bArmatureActuator", !37, i64 0, !37, i64 64, !54, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!103 = !{!104, !37, i64 5}
!104 = !{!"bSteeringActuator", !37, i64 0, !37, i64 5, !39, i64 6, !54, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !54, i64 28, !36, i64 32, !36, i64 40}
!105 = !{!104, !39, i64 6}
!106 = !{!107, !39, i64 2}
!107 = !{!"bMouseActuator", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 12, !37, i64 20, !37, i64 28, !37, i64 36}
!108 = !{!54, !54, i64 0}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43}
!112 = distinct !{!112, !43}
!113 = !{!35, !39, i64 26}
!114 = distinct !{!114, !43}
!115 = distinct !{!115, !43}
!116 = !{!68, !39, i64 30}
!117 = distinct !{!117, !43}
!118 = distinct !{!118, !43}
!119 = !{!97, !36, i64 8}
!120 = !{!121, !36, i64 16}
!121 = !{!"Object", !122, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !54, i64 140, !54, i64 144, !54, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !123, i64 312, !36, i64 360, !61, i64 368, !61, i64 384, !61, i64 400, !61, i64 416, !54, i64 432, !54, i64 436, !36, i64 440, !36, i64 448, !54, i64 456, !54, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !54, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !54, i64 968, !54, i64 972, !54, i64 976, !54, i64 980, !54, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !61, i64 1056, !61, i64 1072, !61, i64 1088, !61, i64 1104, !49, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !54, i64 1144, !54, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !61, i64 1176, !61, i64 1192, !61, i64 1208, !61, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !124, i64 1304, !124, i64 1312, !54, i64 1320, !54, i64 1324, !61, i64 1328, !61, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !61, i64 1400, !36, i64 1416}
!122 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!123 = !{!"bAnimVizSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44}
!124 = !{!"long", !37, i64 0}
!125 = !{!126, !36, i64 16}
!126 = !{!"bSceneActuator", !39, i64 0, !39, i64 2, !54, i64 4, !36, i64 8, !36, i64 16}
!127 = !{!94, !36, i64 0}
!128 = !{!92, !36, i64 104}
!129 = !{!130, !36, i64 64}
!130 = !{!"bMessageActuator", !37, i64 0, !36, i64 64, !37, i64 72, !39, i64 136, !39, i64 138, !54, i64 140, !37, i64 144}
!131 = !{!132, !36, i64 8}
!132 = !{!"bParentActuator", !37, i64 0, !39, i64 2, !54, i64 4, !36, i64 8}
!133 = !{!102, !36, i64 144}
!134 = !{!102, !36, i64 152}
!135 = !{!136, !36, i64 136}
!136 = !{!"bPropertyActuator", !54, i64 0, !54, i64 4, !37, i64 8, !37, i64 72, !36, i64 136}
!137 = !{!104, !36, i64 40}
!138 = !{!104, !36, i64 32}
!139 = distinct !{!139, !43}
!140 = distinct !{!140, !43}
!141 = !{!142, !36, i64 0}
!142 = !{!"bMessageSensor", !36, i64 0, !37, i64 8, !37, i64 72}
!143 = distinct !{!143, !43}
!144 = distinct !{!144, !43}
!145 = distinct !{!145, !43}
!146 = !{!35, !36, i64 8}
!147 = distinct !{!147, !43}
!148 = !{!35, !36, i64 0}
!149 = distinct !{!149, !43}
!150 = distinct !{!150, !43}
!151 = !{!68, !36, i64 8}
!152 = !{!68, !54, i64 132}
!153 = distinct !{!153, !43}
!154 = !{!68, !36, i64 0}
!155 = distinct !{!155, !43}
!156 = distinct !{!156, !43}
!157 = !{!81, !36, i64 8}
!158 = distinct !{!158, !43}
!159 = !{!81, !36, i64 0}
!160 = distinct !{!160, !43}
!161 = distinct !{!161, !43}
!162 = distinct !{!162, !43}
!163 = distinct !{!163, !43}
