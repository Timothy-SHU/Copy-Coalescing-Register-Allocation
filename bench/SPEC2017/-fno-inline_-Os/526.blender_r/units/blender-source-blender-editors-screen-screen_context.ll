; ModuleID = 'blender/source/blender/editors/screen/screen_context.c'
source_filename = "blender/source/blender/editors/screen/screen_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"visible_objects\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"visible_bases\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"selectable_objects\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"selectable_bases\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"selected_objects\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"selected_bases\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"selected_editable_objects\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"selected_editable_bases\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"visible_bones\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"editable_bones\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"selected_bones\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"selected_editable_bones\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"visible_pose_bones\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"selected_pose_bones\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"active_bone\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"active_pose_bone\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"active_base\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"active_object\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"edit_object\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"sculpt_object\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"vertex_paint_object\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"weight_paint_object\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"image_paint_object\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"particle_edit_object\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sequences\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"selected_sequences\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"selected_editable_sequences\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"active_operator\00", align 1
@screen_context_dir = dso_local global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], align 16
@RNA_ObjectBase = external global %struct.StructRNA, align 1
@RNA_EditBone = external global %struct.StructRNA, align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@RNA_Bone = external global %struct.StructRNA, align 1
@RNA_Sequence = external global %struct.StructRNA, align 1
@RNA_Operator = external global %struct.StructRNA, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ed_screen_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #2
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %3, %14
  %18 = phi ptr [ %16, %14 ], [ null, %3 ]
  %19 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @screen_context_dir) #2
  br label %595

22:                                               ; preds = %17
  %23 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str) #2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %6) #2
  br label %595

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.2) #2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %29, %26
  %33 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #2
  %34 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = icmp eq i8 %33, 0
  br label %39

39:                                               ; preds = %37, %56
  %40 = phi ptr [ %35, %37 ], [ %57, %56 ]
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 102
  %44 = load i8, ptr %43, align 8, !tbaa !69
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !72
  %50 = load i32, ptr %7, align 8, !tbaa !43
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  br i1 %38, label %55, label %54

54:                                               ; preds = %53
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef nonnull %42) #2
  br label %56

55:                                               ; preds = %53
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %40) #2
  br label %56

56:                                               ; preds = %39, %47, %55, %54
  %57 = load ptr, ptr %40, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %39, !llvm.loop !73

59:                                               ; preds = %56, %32
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

60:                                               ; preds = %29
  %61 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %63, %60
  %67 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %68 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %66
  %72 = icmp eq i8 %67, 0
  br label %73

73:                                               ; preds = %71, %89
  %74 = phi ptr [ %69, %71 ], [ %90, %89 ]
  %75 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !72
  %77 = and i32 %76, %8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !66
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 102
  %83 = load i8, ptr %82, align 8, !tbaa !69
  %84 = and i8 %83, 3
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  br i1 %72, label %88, label %87

87:                                               ; preds = %86
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef nonnull %81) #2
  br label %89

88:                                               ; preds = %86
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %74) #2
  br label %89

89:                                               ; preds = %73, %87, %88, %79
  %90 = load ptr, ptr %74, align 8, !tbaa !68
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %73, !llvm.loop !75

92:                                               ; preds = %89, %66
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

93:                                               ; preds = %63
  %94 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #2
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.6) #2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %127, label %99

99:                                               ; preds = %96, %93
  %100 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #2
  %101 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !68
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %99
  %105 = icmp eq i8 %100, 0
  br label %106

106:                                              ; preds = %104, %123
  %107 = phi ptr [ %102, %104 ], [ %124, %123 ]
  %108 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 4
  %109 = load i32, ptr %108, align 8, !tbaa !76
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !72
  %115 = load i32, ptr %7, align 8, !tbaa !43
  %116 = and i32 %115, %114
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  br i1 %105, label %122, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !66
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %121) #2
  br label %123

122:                                              ; preds = %118
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %107) #2
  br label %123

123:                                              ; preds = %106, %112, %122, %119
  %124 = load ptr, ptr %107, align 8, !tbaa !68
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %106, !llvm.loop !77

126:                                              ; preds = %123, %99
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

127:                                              ; preds = %96
  %128 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #2
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.8) #2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %170, label %133

133:                                              ; preds = %130, %127
  %134 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #2
  %135 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !68
  %137 = icmp eq ptr %136, null
  br i1 %137, label %169, label %138

138:                                              ; preds = %133
  %139 = icmp eq i8 %134, 0
  br label %140

140:                                              ; preds = %138, %166
  %141 = phi ptr [ %136, %138 ], [ %167, %166 ]
  %142 = getelementptr inbounds %struct.Base, ptr %141, i64 0, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !76
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.Base, ptr %141, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !72
  %149 = load i32, ptr %7, align 8, !tbaa !43
  %150 = and i32 %149, %148
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.Base, ptr %141, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !66
  %155 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 102
  %156 = load i8, ptr %155, align 8, !tbaa !69
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = tail call zeroext i8 @BKE_object_is_libdata(ptr noundef nonnull %154) #2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  br i1 %139, label %165, label %163

163:                                              ; preds = %162
  %164 = load ptr, ptr %153, align 8, !tbaa !66
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %164) #2
  br label %166

165:                                              ; preds = %162
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %141) #2
  br label %166

166:                                              ; preds = %140, %146, %159, %165, %163, %152
  %167 = load ptr, ptr %141, align 8, !tbaa !68
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %140, !llvm.loop !78

169:                                              ; preds = %166, %133
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

170:                                              ; preds = %130
  %171 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #2
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %252, label %176

176:                                              ; preds = %173, %170
  %177 = icmp eq ptr %10, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %180 = load i16, ptr %179, align 8, !tbaa !79
  %181 = icmp eq i16 %180, 25
  br i1 %181, label %184, label %182

182:                                              ; preds = %178, %176
  %183 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #2
  br label %595

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %186 = load ptr, ptr %185, align 8, !tbaa !80
  %187 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #2
  %188 = icmp eq ptr %186, null
  br i1 %188, label %595, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.bArmature, ptr %186, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !81
  %192 = icmp eq ptr %191, null
  br i1 %192, label %595, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %191, align 8, !tbaa !68
  %195 = icmp eq ptr %194, null
  br i1 %195, label %251, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.bArmature, ptr %186, i64 0, i32 15
  %198 = getelementptr inbounds %struct.bArmature, ptr %186, i64 0, i32 8
  %199 = icmp eq i8 %187, 0
  br label %200

200:                                              ; preds = %196, %247
  %201 = phi ptr [ %194, %196 ], [ %249, %247 ]
  %202 = phi ptr [ null, %196 ], [ %248, %247 ]
  %203 = load i32, ptr %197, align 8, !tbaa !83
  %204 = getelementptr inbounds %struct.EditBone, ptr %201, i64 0, i32 10
  %205 = load i32, ptr %204, align 8, !tbaa !84
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %247, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.EditBone, ptr %201, i64 0, i32 9
  %210 = load i32, ptr %209, align 4, !tbaa !86
  %211 = and i32 %210, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %247

213:                                              ; preds = %208
  %214 = load i32, ptr %198, align 8, !tbaa !87
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %190, align 8, !tbaa !81
  %219 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %218, ptr noundef nonnull %201) #2
  br label %220

220:                                              ; preds = %217, %213
  %221 = phi ptr [ %219, %217 ], [ %202, %213 ]
  br i1 %199, label %233, label %222

222:                                              ; preds = %220
  %223 = load i32, ptr %209, align 4, !tbaa !86
  %224 = and i32 %223, 524289
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %247

226:                                              ; preds = %222
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %201) #2
  %227 = icmp eq ptr %221, null
  br i1 %227, label %247, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 9
  %230 = load i32, ptr %229, align 4, !tbaa !86
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %246, label %247

233:                                              ; preds = %220
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %201) #2
  %234 = icmp eq ptr %221, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %233
  %236 = load i32, ptr %197, align 8, !tbaa !83
  %237 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 10
  %238 = load i32, ptr %237, align 8, !tbaa !84
  %239 = and i32 %238, %236
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 9
  %243 = load i32, ptr %242, align 4, !tbaa !86
  %244 = and i32 %243, 1024
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %241, %235, %228
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %221) #2
  br label %247

247:                                              ; preds = %246, %208, %233, %241, %228, %226, %222, %200
  %248 = phi ptr [ %221, %228 ], [ null, %226 ], [ %221, %222 ], [ %221, %241 ], [ null, %233 ], [ %202, %208 ], [ %202, %200 ], [ %221, %246 ]
  %249 = load ptr, ptr %201, align 8, !tbaa !68
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %200, !llvm.loop !88

251:                                              ; preds = %247, %193
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

252:                                              ; preds = %173
  %253 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.11) #2
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #2
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %328, label %258

258:                                              ; preds = %255, %252
  %259 = icmp eq ptr %10, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %262 = load i16, ptr %261, align 8, !tbaa !79
  %263 = icmp eq i16 %262, 25
  br i1 %263, label %266, label %264

264:                                              ; preds = %260, %258
  %265 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #2
  br label %595

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %268 = load ptr, ptr %267, align 8, !tbaa !80
  %269 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #2
  %270 = icmp eq ptr %268, null
  br i1 %270, label %595, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.bArmature, ptr %268, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !81
  %274 = icmp eq ptr %273, null
  br i1 %274, label %595, label %275

275:                                              ; preds = %271
  %276 = load ptr, ptr %273, align 8, !tbaa !68
  %277 = icmp eq ptr %276, null
  br i1 %277, label %327, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.bArmature, ptr %268, i64 0, i32 15
  %280 = getelementptr inbounds %struct.bArmature, ptr %268, i64 0, i32 8
  %281 = icmp eq i8 %269, 0
  br label %282

282:                                              ; preds = %278, %323
  %283 = phi ptr [ %276, %278 ], [ %325, %323 ]
  %284 = phi ptr [ null, %278 ], [ %324, %323 ]
  %285 = load i32, ptr %279, align 8, !tbaa !83
  %286 = getelementptr inbounds %struct.EditBone, ptr %283, i64 0, i32 10
  %287 = load i32, ptr %286, align 8, !tbaa !84
  %288 = and i32 %287, %285
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %323, label %290

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.EditBone, ptr %283, i64 0, i32 9
  %292 = load i32, ptr %291, align 4, !tbaa !86
  %293 = and i32 %292, 1025
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %323

295:                                              ; preds = %290
  %296 = load i32, ptr %280, align 8, !tbaa !87
  %297 = and i32 %296, 256
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %272, align 8, !tbaa !81
  %301 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %300, ptr noundef nonnull %283) #2
  br label %302

302:                                              ; preds = %299, %295
  %303 = phi ptr [ %301, %299 ], [ %284, %295 ]
  br i1 %281, label %315, label %304

304:                                              ; preds = %302
  %305 = load i32, ptr %291, align 4, !tbaa !86
  %306 = and i32 %305, 524289
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %323

308:                                              ; preds = %304
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %268, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %283) #2
  %309 = icmp eq ptr %303, null
  br i1 %309, label %323, label %310

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.EditBone, ptr %303, i64 0, i32 9
  %312 = load i32, ptr %311, align 4, !tbaa !86
  %313 = and i32 %312, 1
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %322, label %323

315:                                              ; preds = %302
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %268, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %283) #2
  %316 = icmp eq ptr %303, null
  br i1 %316, label %323, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.EditBone, ptr %303, i64 0, i32 9
  %319 = load i32, ptr %318, align 4, !tbaa !86
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317, %310
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %268, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %303) #2
  br label %323

323:                                              ; preds = %322, %290, %315, %317, %310, %308, %304, %282
  %324 = phi ptr [ %303, %310 ], [ null, %308 ], [ %303, %304 ], [ %303, %317 ], [ null, %315 ], [ %284, %290 ], [ %284, %282 ], [ %303, %322 ]
  %325 = load ptr, ptr %283, align 8, !tbaa !68
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %282, !llvm.loop !89

327:                                              ; preds = %323, %275
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

328:                                              ; preds = %255
  %329 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #2
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %366, label %331

331:                                              ; preds = %328
  %332 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %333 = icmp eq ptr %332, null
  br i1 %333, label %595, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.Object, ptr %332, i64 0, i32 19
  %336 = load ptr, ptr %335, align 8, !tbaa !80
  %337 = getelementptr inbounds %struct.Object, ptr %332, i64 0, i32 18
  %338 = load ptr, ptr %337, align 8, !tbaa !90
  %339 = icmp ne ptr %338, null
  %340 = icmp ne ptr %336, null
  %341 = select i1 %339, i1 %340, i1 false
  br i1 %341, label %342, label %595

342:                                              ; preds = %334
  %343 = load ptr, ptr %338, align 8, !tbaa !68
  %344 = icmp eq ptr %343, null
  br i1 %344, label %365, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.bArmature, ptr %336, i64 0, i32 15
  br label %347

347:                                              ; preds = %345, %362
  %348 = phi ptr [ %343, %345 ], [ %363, %362 ]
  %349 = getelementptr inbounds %struct.bPoseChannel, ptr %348, i64 0, i32 12
  %350 = load ptr, ptr %349, align 8, !tbaa !91
  %351 = getelementptr inbounds %struct.Bone, ptr %350, i64 0, i32 25
  %352 = load i32, ptr %351, align 8, !tbaa !93
  %353 = load i32, ptr %346, align 8, !tbaa !83
  %354 = and i32 %353, %352
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct.Bone, ptr %350, i64 0, i32 10
  %358 = load i32, ptr %357, align 8, !tbaa !95
  %359 = and i32 %358, 64
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %356
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %332, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %348) #2
  br label %362

362:                                              ; preds = %356, %361, %347
  %363 = load ptr, ptr %348, align 8, !tbaa !68
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %347, !llvm.loop !96

365:                                              ; preds = %362, %342
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

366:                                              ; preds = %328
  %367 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.14) #2
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %404, label %369

369:                                              ; preds = %366
  %370 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %371 = icmp eq ptr %370, null
  br i1 %371, label %595, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.Object, ptr %370, i64 0, i32 19
  %374 = load ptr, ptr %373, align 8, !tbaa !80
  %375 = getelementptr inbounds %struct.Object, ptr %370, i64 0, i32 18
  %376 = load ptr, ptr %375, align 8, !tbaa !90
  %377 = icmp ne ptr %376, null
  %378 = icmp ne ptr %374, null
  %379 = select i1 %377, i1 %378, i1 false
  br i1 %379, label %380, label %595

380:                                              ; preds = %372
  %381 = load ptr, ptr %376, align 8, !tbaa !68
  %382 = icmp eq ptr %381, null
  br i1 %382, label %403, label %383

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.bArmature, ptr %374, i64 0, i32 15
  br label %385

385:                                              ; preds = %383, %400
  %386 = phi ptr [ %381, %383 ], [ %401, %400 ]
  %387 = getelementptr inbounds %struct.bPoseChannel, ptr %386, i64 0, i32 12
  %388 = load ptr, ptr %387, align 8, !tbaa !91
  %389 = getelementptr inbounds %struct.Bone, ptr %388, i64 0, i32 25
  %390 = load i32, ptr %389, align 8, !tbaa !93
  %391 = load i32, ptr %384, align 8, !tbaa !83
  %392 = and i32 %391, %390
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %400, label %394

394:                                              ; preds = %385
  %395 = getelementptr inbounds %struct.Bone, ptr %388, i64 0, i32 10
  %396 = load i32, ptr %395, align 8, !tbaa !95
  %397 = and i32 %396, 65
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %400

399:                                              ; preds = %394
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %370, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %386) #2
  br label %400

400:                                              ; preds = %394, %399, %385
  %401 = load ptr, ptr %386, align 8, !tbaa !68
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %385, !llvm.loop !97

403:                                              ; preds = %400, %380
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

404:                                              ; preds = %366
  %405 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.15) #2
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %429, label %407

407:                                              ; preds = %404
  %408 = icmp eq ptr %18, null
  br i1 %408, label %595, label %409

409:                                              ; preds = %407
  %410 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %411 = load i16, ptr %410, align 8, !tbaa !79
  %412 = icmp eq i16 %411, 25
  br i1 %412, label %413, label %595

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %415 = load ptr, ptr %414, align 8, !tbaa !80
  %416 = getelementptr inbounds %struct.bArmature, ptr %415, i64 0, i32 4
  %417 = load ptr, ptr %416, align 8, !tbaa !81
  %418 = icmp eq ptr %417, null
  br i1 %418, label %424, label %419

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.bArmature, ptr %415, i64 0, i32 6
  %421 = load ptr, ptr %420, align 8, !tbaa !98
  %422 = icmp eq ptr %421, null
  br i1 %422, label %595, label %423

423:                                              ; preds = %419
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %415, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %421) #2
  br label %595

424:                                              ; preds = %413
  %425 = getelementptr inbounds %struct.bArmature, ptr %415, i64 0, i32 5
  %426 = load ptr, ptr %425, align 8, !tbaa !99
  %427 = icmp eq ptr %426, null
  br i1 %427, label %595, label %428

428:                                              ; preds = %424
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %415, ptr noundef nonnull @RNA_Bone, ptr noundef nonnull %426) #2
  br label %595

429:                                              ; preds = %404
  %430 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.16) #2
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %429
  %433 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %434 = tail call ptr @BKE_pose_channel_active(ptr noundef %433) #2
  %435 = icmp eq ptr %434, null
  br i1 %435, label %595, label %436

436:                                              ; preds = %432
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %433, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %434) #2
  br label %595

437:                                              ; preds = %429
  %438 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.17) #2
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %437
  br i1 %13, label %595, label %441

441:                                              ; preds = %440
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %12) #2
  br label %595

442:                                              ; preds = %437
  %443 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.18) #2
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %442
  %446 = icmp eq ptr %18, null
  br i1 %446, label %595, label %447

447:                                              ; preds = %445
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

448:                                              ; preds = %442
  %449 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.19) #2
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = icmp eq ptr %18, null
  br i1 %452, label %595, label %453

453:                                              ; preds = %451
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

454:                                              ; preds = %448
  %455 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.20) #2
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %454
  %458 = icmp eq ptr %10, null
  br i1 %458, label %595, label %459

459:                                              ; preds = %457
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %10) #2
  br label %595

460:                                              ; preds = %454
  %461 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.21) #2
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %471, label %463

463:                                              ; preds = %460
  %464 = icmp eq ptr %18, null
  br i1 %464, label %595, label %465

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %467 = load i32, ptr %466, align 8, !tbaa !100
  %468 = and i32 %467, 2
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %595, label %470

470:                                              ; preds = %465
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

471:                                              ; preds = %460
  %472 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.22) #2
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %482, label %474

474:                                              ; preds = %471
  %475 = icmp eq ptr %18, null
  br i1 %475, label %595, label %476

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %478 = load i32, ptr %477, align 8, !tbaa !100
  %479 = and i32 %478, 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %595, label %481

481:                                              ; preds = %476
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

482:                                              ; preds = %471
  %483 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.23) #2
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %493, label %485

485:                                              ; preds = %482
  %486 = icmp eq ptr %18, null
  br i1 %486, label %595, label %487

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %489 = load i32, ptr %488, align 8, !tbaa !100
  %490 = and i32 %489, 8
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %595, label %492

492:                                              ; preds = %487
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

493:                                              ; preds = %482
  %494 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.24) #2
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %504, label %496

496:                                              ; preds = %493
  %497 = icmp eq ptr %18, null
  br i1 %497, label %595, label %498

498:                                              ; preds = %496
  %499 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %500 = load i32, ptr %499, align 8, !tbaa !100
  %501 = and i32 %500, 16
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %595, label %503

503:                                              ; preds = %498
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

504:                                              ; preds = %493
  %505 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.25) #2
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %515, label %507

507:                                              ; preds = %504
  %508 = icmp eq ptr %18, null
  br i1 %508, label %595, label %509

509:                                              ; preds = %507
  %510 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %511 = load i32, ptr %510, align 8, !tbaa !100
  %512 = and i32 %511, 32
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %595, label %514

514:                                              ; preds = %509
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %595

515:                                              ; preds = %504
  %516 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.26) #2
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %530, label %518

518:                                              ; preds = %515
  %519 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %6, i8 noundef zeroext 0) #2
  %520 = icmp eq ptr %519, null
  br i1 %520, label %595, label %521

521:                                              ; preds = %518
  %522 = load ptr, ptr %519, align 8, !tbaa !101
  %523 = load ptr, ptr %522, align 8, !tbaa !68
  %524 = icmp eq ptr %523, null
  br i1 %524, label %529, label %525

525:                                              ; preds = %521, %525
  %526 = phi ptr [ %527, %525 ], [ %523, %521 ]
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %526) #2
  %527 = load ptr, ptr %526, align 8, !tbaa !68
  %528 = icmp eq ptr %527, null
  br i1 %528, label %529, label %525, !llvm.loop !103

529:                                              ; preds = %525, %521
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

530:                                              ; preds = %515
  %531 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.27) #2
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %551, label %533

533:                                              ; preds = %530
  %534 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %6, i8 noundef zeroext 0) #2
  %535 = icmp eq ptr %534, null
  br i1 %535, label %595, label %536

536:                                              ; preds = %533
  %537 = load ptr, ptr %534, align 8, !tbaa !101
  %538 = load ptr, ptr %537, align 8, !tbaa !68
  %539 = icmp eq ptr %538, null
  br i1 %539, label %550, label %540

540:                                              ; preds = %536, %547
  %541 = phi ptr [ %548, %547 ], [ %538, %536 ]
  %542 = getelementptr inbounds %struct.Sequence, ptr %541, i64 0, i32 5
  %543 = load i32, ptr %542, align 8, !tbaa !104
  %544 = and i32 %543, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %547, label %546

546:                                              ; preds = %540
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %541) #2
  br label %547

547:                                              ; preds = %540, %546
  %548 = load ptr, ptr %541, align 8, !tbaa !68
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %540, !llvm.loop !106

550:                                              ; preds = %547, %536
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

551:                                              ; preds = %530
  %552 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.28) #2
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %572, label %554

554:                                              ; preds = %551
  %555 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %6, i8 noundef zeroext 0) #2
  %556 = icmp eq ptr %555, null
  br i1 %556, label %595, label %557

557:                                              ; preds = %554
  %558 = load ptr, ptr %555, align 8, !tbaa !101
  %559 = load ptr, ptr %558, align 8, !tbaa !68
  %560 = icmp eq ptr %559, null
  br i1 %560, label %571, label %561

561:                                              ; preds = %557, %568
  %562 = phi ptr [ %569, %568 ], [ %559, %557 ]
  %563 = getelementptr inbounds %struct.Sequence, ptr %562, i64 0, i32 5
  %564 = load i32, ptr %563, align 8, !tbaa !104
  %565 = and i32 %564, 16385
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %567, label %568

567:                                              ; preds = %561
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %562) #2
  br label %568

568:                                              ; preds = %561, %567
  %569 = load ptr, ptr %562, align 8, !tbaa !68
  %570 = icmp eq ptr %569, null
  br i1 %570, label %571, label %561, !llvm.loop !107

571:                                              ; preds = %568, %557
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %595

572:                                              ; preds = %551
  %573 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.29) #2
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %595, label %575

575:                                              ; preds = %572
  %576 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #2
  %577 = icmp eq ptr %576, null
  br i1 %577, label %581, label %578

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.SpaceFile, ptr %576, i64 0, i32 9
  %580 = load ptr, ptr %579, align 8, !tbaa !108
  br label %586

581:                                              ; preds = %575
  %582 = tail call ptr @uiContextActiveOperator(ptr noundef %0) #2
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %589

584:                                              ; preds = %581
  %585 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #2
  br label %586

586:                                              ; preds = %584, %578
  %587 = phi ptr [ %580, %578 ], [ %585, %584 ]
  %588 = icmp eq ptr %587, null
  br i1 %588, label %595, label %589

589:                                              ; preds = %581, %586
  %590 = phi ptr [ %587, %586 ], [ %582, %581 ]
  %591 = getelementptr inbounds %struct.wmOperator, ptr %590, i64 0, i32 7
  %592 = load ptr, ptr %591, align 8, !tbaa !110
  %593 = icmp eq ptr %592, null
  br i1 %593, label %595, label %594

594:                                              ; preds = %589
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_Operator, ptr noundef nonnull %590) #2
  br label %595

595:                                              ; preds = %369, %331, %409, %407, %184, %189, %266, %271, %334, %372, %419, %424, %586, %589, %432, %518, %533, %554, %182, %264, %571, %550, %529, %436, %423, %428, %572, %594, %507, %509, %514, %496, %498, %503, %485, %487, %492, %474, %476, %481, %463, %465, %470, %457, %459, %451, %453, %445, %447, %440, %441, %403, %365, %327, %251, %169, %126, %92, %59, %25, %21
  %596 = phi i32 [ 1, %21 ], [ 1, %25 ], [ 1, %59 ], [ 1, %92 ], [ 1, %126 ], [ 1, %169 ], [ 1, %436 ], [ 1, %529 ], [ 1, %550 ], [ 1, %571 ], [ 1, %251 ], [ 1, %327 ], [ 1, %365 ], [ 1, %403 ], [ 1, %441 ], [ 1, %440 ], [ 1, %447 ], [ 1, %445 ], [ 1, %453 ], [ 1, %451 ], [ 1, %459 ], [ 1, %457 ], [ 1, %470 ], [ 1, %465 ], [ 1, %463 ], [ 1, %481 ], [ 1, %476 ], [ 1, %474 ], [ 1, %492 ], [ 1, %487 ], [ 1, %485 ], [ 1, %503 ], [ 1, %498 ], [ 1, %496 ], [ 1, %514 ], [ 1, %509 ], [ 1, %507 ], [ 1, %594 ], [ 0, %572 ], [ 1, %428 ], [ 1, %423 ], [ -1, %264 ], [ -1, %182 ], [ -1, %554 ], [ -1, %533 ], [ -1, %518 ], [ -1, %432 ], [ -1, %589 ], [ -1, %586 ], [ -1, %424 ], [ -1, %419 ], [ -1, %372 ], [ -1, %334 ], [ -1, %271 ], [ -1, %266 ], [ -1, %189 ], [ -1, %184 ], [ -1, %407 ], [ -1, %409 ], [ -1, %331 ], [ -1, %369 ]
  ret i32 %596
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_id_list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_libdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiContextActiveOperator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

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
!34 = !{!35, !37, i64 184}
!35 = !{!"bScreen", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !37, i64 184, !37, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !37, i64 232, !37, i64 240}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!44, !41, i64 232}
!44 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !45, i64 280, !55, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !56, i64 4400, !57, i64 4416, !60, i64 4600, !37, i64 4608, !61, i64 4616, !37, i64 4640, !62, i64 4648, !62, i64 4656, !48, i64 4664, !49, i64 4824, !63, i64 4888, !37, i64 4952}
!45 = !{!"RenderData", !46, i64 0, !37, i64 248, !37, i64 256, !50, i64 264, !51, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !47, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !52, i64 544, !52, i64 560, !53, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !41, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !47, i64 660, !47, i64 664, !40, i64 668, !40, i64 670, !47, i64 672, !47, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !47, i64 2528, !47, i64 2532, !40, i64 2536, !40, i64 2538, !47, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !47, i64 2560, !47, i64 2564, !37, i64 2568, !41, i64 2576, !47, i64 2580, !38, i64 2584, !54, i64 2616, !41, i64 3976, !41, i64 3980}
!46 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !47, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !48, i64 24, !49, i64 184}
!47 = !{!"float", !38, i64 0}
!48 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !47, i64 136, !47, i64 140, !37, i64 144, !37, i64 152}
!49 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!50 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!51 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !47, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!52 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!53 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!54 = !{!"BakeData", !46, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !47, i64 1280, !47, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!55 = !{!"AudioData", !41, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !47, i64 24, !47, i64 28}
!56 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!57 = !{!"GameData", !56, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !58, i64 40, !40, i64 64, !40, i64 66, !47, i64 68, !59, i64 72, !47, i64 128, !47, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!58 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !47, i64 8, !47, i64 12, !37, i64 16}
!59 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !41, i64 40, !47, i64 44, !47, i64 48, !40, i64 52, !40, i64 54}
!60 = !{!"UnitSettings", !47, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!61 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!62 = !{!"long", !38, i64 0}
!63 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!64 = !{!44, !37, i64 176}
!65 = !{!44, !37, i64 168}
!66 = !{!67, !37, i64 32}
!67 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!68 = !{!37, !37, i64 0}
!69 = !{!70, !38, i64 1160}
!70 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !71, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !47, i64 616, !47, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !47, i64 1048, !47, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !47, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !47, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !62, i64 1304, !62, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!71 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!72 = !{!67, !41, i64 16}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = distinct !{!75, !74}
!76 = !{!67, !41, i64 24}
!77 = distinct !{!77, !74}
!78 = distinct !{!78, !74}
!79 = !{!70, !40, i64 136}
!80 = !{!70, !37, i64 296}
!81 = !{!82, !37, i64 160}
!82 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!83 = !{!82, !41, i64 216}
!84 = !{!85, !41, i64 136}
!85 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !47, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !40, i64 180}
!86 = !{!85, !41, i64 132}
!87 = !{!82, !41, i64 192}
!88 = distinct !{!88, !74}
!89 = distinct !{!89, !74}
!90 = !{!70, !37, i64 288}
!91 = !{!92, !37, i64 120}
!92 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !47, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !47, i64 524, !47, i64 528, !47, i64 532, !37, i64 536}
!93 = !{!94, !41, i64 320}
!94 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !47, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!95 = !{!94, !41, i64 176}
!96 = distinct !{!96, !74}
!97 = distinct !{!97, !74}
!98 = !{!82, !37, i64 176}
!99 = !{!82, !37, i64 168}
!100 = !{!70, !41, i64 432}
!101 = !{!102, !37, i64 0}
!102 = !{!"Editing", !37, i64 0, !42, i64 8, !42, i64 24, !37, i64 40, !38, i64 48, !38, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !52, i64 2112}
!103 = distinct !{!103, !74}
!104 = !{!105, !41, i64 96}
!105 = !{!"Sequence", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !47, i64 224, !47, i64 228, !37, i64 232, !37, i64 240, !37, i64 248, !42, i64 256, !37, i64 272, !37, i64 280, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !37, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !47, i64 324, !41, i64 328, !38, i64 332, !38, i64 333, !42, i64 336}
!106 = distinct !{!106, !74}
!107 = distinct !{!107, !74}
!108 = !{!109, !37, i64 72}
!109 = !{!"SpaceFile", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!110 = !{!111, !37, i64 112}
!111 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
