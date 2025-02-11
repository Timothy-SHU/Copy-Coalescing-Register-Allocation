; ModuleID = 'blender/source/blender/editors/physics/particle_boids.c'
source_filename = "blender/source/blender/editors/physics/particle_boids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }

@.str = private unnamed_addr constant [14 x i8] c"Add Boid Rule\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Add a boid rule to the current boid state\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"BOID_OT_rule_add\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@boidrule_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Remove Boid Rule\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"BOID_OT_rule_del\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Delete current boid rule\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Move Up Boid Rule\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Move boid rule up in the list\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"BOID_OT_rule_move_up\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Move Down Boid Rule\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Move boid rule down in the list\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"BOID_OT_rule_move_down\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Add Boid State\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Add a boid state to the particle system\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"BOID_OT_state_add\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Remove Boid State\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"BOID_OT_state_del\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Delete current boid state\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Move Up Boid State\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Move boid state up in the list\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"BOID_OT_state_move_up\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Move Down Boid State\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Move boid state down in the list\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"BOID_OT_state_move_down\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"particle_settings\00", align 1
@RNA_ParticleSettings = external global %struct.StructRNA, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BOID_OT_rule_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rule_add_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @boidrule_type_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.3) #4
  %9 = icmp eq ptr %5, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !25
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = call ptr @boid_get_current_state(ptr noundef %16) #4
  %18 = getelementptr inbounds %struct.BoidState, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %14, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %14 ]
  %23 = getelementptr inbounds %struct.BoidRule, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !32
  %25 = and i32 %24, -2
  store i32 %25, ptr %23, align 4, !tbaa !32
  %26 = load ptr, ptr %22, align 8, !tbaa !31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !34

28:                                               ; preds = %21, %14
  %29 = call ptr @boid_new_rule(i32 noundef %8) #4
  %30 = getelementptr inbounds %struct.BoidRule, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !32
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !32
  call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %29) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 18) #4
  br label %33

33:                                               ; preds = %2, %10, %28
  %34 = phi i32 [ 4, %28 ], [ 2, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_rule_del(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rule_del_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_del_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = call ptr @boid_get_current_state(ptr noundef %14) #4
  %16 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 2
  br label %17

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %16, %12 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BoidRule, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !32
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %17, label %26, !llvm.loop !36

26:                                               ; preds = %21
  call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %19) #4
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  call void %27(ptr noundef nonnull %19) #4
  br label %28

28:                                               ; preds = %17, %26
  %29 = load ptr, ptr %16, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.BoidRule, ptr %29, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !32
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !32
  br label %35

35:                                               ; preds = %31, %28
  call void @DAG_relations_tag_update(ptr noundef %4) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 18) #4
  br label %36

36:                                               ; preds = %2, %8, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %8 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_rule_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rule_move_up_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = call ptr @boid_get_current_state(ptr noundef %13) #4
  %15 = getelementptr inbounds %struct.BoidState, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %11, %31
  %19 = phi ptr [ %32, %31 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.BoidRule, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BoidRule, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BoidRule, ptr %19, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %15, ptr noundef nonnull %19) #4
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  call void @BLI_insertlinkbefore(ptr noundef nonnull %15, ptr noundef %30, ptr noundef nonnull %19) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 18) #4
  br label %34

31:                                               ; preds = %18, %24
  %32 = load ptr, ptr %19, align 8, !tbaa !31
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !40

34:                                               ; preds = %31, %11, %28, %2, %7
  %35 = phi i32 [ 2, %7 ], [ 2, %2 ], [ 4, %28 ], [ 4, %11 ], [ 4, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_rule_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rule_move_down_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = call ptr @boid_get_current_state(ptr noundef %13) #4
  %15 = getelementptr inbounds %struct.BoidState, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %11, %29
  %19 = phi ptr [ %24, %29 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.BoidRule, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %19, align 8, !tbaa !31
  %25 = icmp eq ptr %24, null
  br i1 %23, label %29, label %26

26:                                               ; preds = %18
  br i1 %25, label %30, label %27

27:                                               ; preds = %26
  call void @BLI_remlink(ptr noundef nonnull %15, ptr noundef nonnull %19) #4
  %28 = load ptr, ptr %19, align 8, !tbaa !41
  call void @BLI_insertlinkafter(ptr noundef nonnull %15, ptr noundef %28, ptr noundef nonnull %19) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 18) #4
  br label %30

29:                                               ; preds = %18
  br i1 %25, label %30, label %18, !llvm.loop !42

30:                                               ; preds = %29, %26, %11, %27, %2, %7
  %31 = phi i32 [ 2, %7 ], [ 2, %2 ], [ 4, %27 ], [ 4, %11 ], [ 4, %26 ], [ 4, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_state_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @state_add_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @state_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.BoidSettings, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = and i32 %20, -2
  store i32 %21, ptr %19, align 4, !tbaa !43
  %22 = load ptr, ptr %18, align 8, !tbaa !31
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !44

24:                                               ; preds = %17, %11
  %25 = call ptr @boid_new_state(ptr noundef %13) #4
  %26 = getelementptr inbounds %struct.BoidState, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !43
  %29 = load ptr, ptr %12, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.BoidSettings, ptr %29, i64 0, i32 22
  call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %25) #4
  br label %31

31:                                               ; preds = %2, %7, %24
  %32 = phi i32 [ 4, %24 ], [ 2, %7 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_state_del(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @state_del_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @state_del_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.BoidSettings, ptr %14, i64 0, i32 22
  br label %16

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %15, %12 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !45

25:                                               ; preds = %20
  call void @BLI_remlink(ptr noundef nonnull %15, ptr noundef nonnull %18) #4
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  call void %26(ptr noundef nonnull %18) #4
  %27 = load ptr, ptr %13, align 8, !tbaa !30
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi ptr [ %27, %25 ], [ %14, %16 ]
  %30 = getelementptr inbounds %struct.BoidSettings, ptr %29, i64 0, i32 22
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call ptr @boid_new_state(ptr noundef nonnull %29) #4
  %35 = load ptr, ptr %13, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.BoidSettings, ptr %35, i64 0, i32 22
  call void @BLI_addtail(ptr noundef nonnull %36, ptr noundef %34) #4
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %39 = getelementptr inbounds %struct.BoidState, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !43
  call void @DAG_relations_tag_update(ptr noundef %4) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 18) #4
  br label %42

42:                                               ; preds = %2, %8, %37
  %43 = phi i32 [ 4, %37 ], [ 2, %8 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_state_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @state_move_up_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @state_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.BoidSettings, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %11, %30
  %18 = phi ptr [ %31, %30 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %18) #4
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  call void @BLI_insertlinkbefore(ptr noundef nonnull %14, ptr noundef %29, ptr noundef nonnull %18) #4
  br label %33

30:                                               ; preds = %17, %23
  %31 = load ptr, ptr %18, align 8, !tbaa !31
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !49

33:                                               ; preds = %30, %11, %27, %2, %7
  %34 = phi i32 [ 2, %7 ], [ 2, %2 ], [ 4, %27 ], [ 4, %11 ], [ 4, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BOID_OT_state_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @state_move_down_exec, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @state_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @RNA_ParticleSettings) #4
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.BoidSettings, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %11, %28
  %18 = phi ptr [ %23, %28 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %18, align 8, !tbaa !31
  %24 = icmp eq ptr %23, null
  br i1 %22, label %28, label %25

25:                                               ; preds = %17
  br i1 %24, label %29, label %26

26:                                               ; preds = %25
  call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %18) #4
  %27 = load ptr, ptr %18, align 8, !tbaa !50
  call void @BLI_insertlinkafter(ptr noundef nonnull %14, ptr noundef %27, ptr noundef nonnull %18) #4
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 18) #4
  br label %29

28:                                               ; preds = %17
  br i1 %24, label %29, label %17, !llvm.loop !51

29:                                               ; preds = %28, %25, %11, %26, %2, %7
  %30 = phi i32 [ 2, %7 ], [ 2, %2 ], [ 4, %26 ], [ 4, %11 ], [ 4, %25 ], [ 4, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @boid_get_current_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @boid_new_rule(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @boid_new_state(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!6, !7, i64 104}
!20 = !{!21, !7, i64 16}
!21 = !{!"PointerRNA", !22, i64 0, !7, i64 8, !7, i64 16}
!22 = !{!"", !7, i64 0}
!23 = !{!24, !7, i64 112}
!24 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!25 = !{!26, !12, i64 168}
!26 = !{!"ParticleSettings", !27, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !28, i64 152, !28, i64 156, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !28, i64 176, !28, i64 180, !12, i64 184, !12, i64 186, !12, i64 188, !12, i64 190, !12, i64 192, !12, i64 194, !12, i64 196, !12, i64 198, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !29, i64 232, !29, i64 236, !8, i64 240, !8, i64 248, !29, i64 256, !29, i64 260, !29, i64 264, !12, i64 268, !12, i64 270, !29, i64 272, !29, i64 276, !29, i64 280, !29, i64 284, !29, i64 288, !29, i64 292, !29, i64 296, !29, i64 300, !29, i64 304, !29, i64 308, !29, i64 312, !29, i64 316, !8, i64 320, !28, i64 324, !28, i64 328, !28, i64 332, !28, i64 336, !12, i64 340, !8, i64 342, !29, i64 348, !29, i64 352, !29, i64 356, !29, i64 360, !29, i64 364, !29, i64 368, !29, i64 372, !8, i64 376, !29, i64 388, !29, i64 392, !29, i64 396, !29, i64 400, !29, i64 404, !29, i64 408, !29, i64 412, !8, i64 416, !29, i64 428, !29, i64 432, !29, i64 436, !29, i64 440, !28, i64 444, !28, i64 448, !29, i64 452, !29, i64 456, !29, i64 460, !29, i64 464, !29, i64 468, !29, i64 472, !29, i64 476, !29, i64 480, !29, i64 484, !29, i64 488, !29, i64 492, !29, i64 496, !29, i64 500, !29, i64 504, !29, i64 508, !29, i64 512, !29, i64 516, !29, i64 520, !29, i64 524, !29, i64 528, !29, i64 532, !29, i64 536, !29, i64 540, !29, i64 544, !29, i64 548, !8, i64 552, !29, i64 560, !29, i64 564, !28, i64 568, !28, i64 572, !8, i64 576, !7, i64 720, !10, i64 728, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !12, i64 792, !8, i64 794}
!27 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !28, i64 100, !28, i64 104, !28, i64 108, !7, i64 112}
!28 = !{!"int", !8, i64 0}
!29 = !{!"float", !8, i64 0}
!30 = !{!26, !7, i64 128}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !28, i64 20}
!33 = !{!"BoidRule", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 20, !8, i64 24}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!38, !7, i64 16}
!38 = !{!"BoidState", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 32, !10, i64 48, !8, i64 64, !28, i64 96, !28, i64 100, !28, i64 104, !29, i64 108, !28, i64 112, !28, i64 116, !29, i64 120, !29, i64 124}
!39 = !{!33, !7, i64 8}
!40 = distinct !{!40, !35}
!41 = !{!33, !7, i64 0}
!42 = distinct !{!42, !35}
!43 = !{!38, !28, i64 100}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35}
!46 = !{!47, !7, i64 88}
!47 = !{!"BoidSettings", !28, i64 0, !28, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !29, i64 64, !29, i64 68, !29, i64 72, !29, i64 76, !29, i64 80, !29, i64 84, !10, i64 88}
!48 = !{!38, !7, i64 8}
!49 = distinct !{!49, !35}
!50 = !{!38, !7, i64 0}
!51 = distinct !{!51, !35}
