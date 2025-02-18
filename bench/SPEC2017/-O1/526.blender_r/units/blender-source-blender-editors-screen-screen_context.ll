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

; Function Attrs: nounwind uwtable
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
  br label %600

22:                                               ; preds = %17
  %23 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str) #2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %6) #2
  br label %600

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
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %42) #2
  br label %56

55:                                               ; preds = %53
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %40) #2
  br label %56

56:                                               ; preds = %39, %47, %55, %54
  %57 = load ptr, ptr %40, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %39, !llvm.loop !73

59:                                               ; preds = %56, %32
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

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
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %81) #2
  br label %89

88:                                               ; preds = %86
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %74) #2
  br label %89

89:                                               ; preds = %73, %87, %88, %79
  %90 = load ptr, ptr %74, align 8, !tbaa !68
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %73, !llvm.loop !76

92:                                               ; preds = %89, %66
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

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
  %109 = load i32, ptr %108, align 8, !tbaa !77
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
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %107) #2
  br label %123

123:                                              ; preds = %106, %112, %122, %119
  %124 = load ptr, ptr %107, align 8, !tbaa !68
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %106, !llvm.loop !78

126:                                              ; preds = %123, %99
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

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
  %143 = load i32, ptr %142, align 8, !tbaa !77
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
  %160 = tail call zeroext i8 @BKE_object_is_libdata(ptr noundef %154) #2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  br i1 %139, label %165, label %163

163:                                              ; preds = %162
  %164 = load ptr, ptr %153, align 8, !tbaa !66
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %164) #2
  br label %166

165:                                              ; preds = %162
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %141) #2
  br label %166

166:                                              ; preds = %140, %146, %159, %165, %163, %152
  %167 = load ptr, ptr %141, align 8, !tbaa !68
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %140, !llvm.loop !79

169:                                              ; preds = %166, %133
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

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
  br i1 %177, label %185, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %180 = load i16, ptr %179, align 8, !tbaa !80
  %181 = icmp eq i16 %180, 25
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %184 = load ptr, ptr %183, align 8, !tbaa !81
  br label %185

185:                                              ; preds = %176, %178, %182
  %186 = phi ptr [ %184, %182 ], [ null, %178 ], [ null, %176 ]
  %187 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #2
  %188 = icmp eq ptr %186, null
  br i1 %188, label %600, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.bArmature, ptr %186, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !82
  %192 = icmp eq ptr %191, null
  br i1 %192, label %600, label %193

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
  %203 = load i32, ptr %197, align 8, !tbaa !84
  %204 = getelementptr inbounds %struct.EditBone, ptr %201, i64 0, i32 10
  %205 = load i32, ptr %204, align 8, !tbaa !85
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %247, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.EditBone, ptr %201, i64 0, i32 9
  %210 = load i32, ptr %209, align 4, !tbaa !87
  %211 = and i32 %210, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %247

213:                                              ; preds = %208
  %214 = load i32, ptr %198, align 8, !tbaa !88
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %190, align 8, !tbaa !82
  %219 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %218, ptr noundef nonnull %201) #2
  br label %220

220:                                              ; preds = %217, %213
  %221 = phi ptr [ %219, %217 ], [ %202, %213 ]
  br i1 %199, label %233, label %222

222:                                              ; preds = %220
  %223 = load i32, ptr %209, align 4, !tbaa !87
  %224 = and i32 %223, 524289
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %247

226:                                              ; preds = %222
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %201) #2
  %227 = icmp eq ptr %221, null
  br i1 %227, label %247, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 9
  %230 = load i32, ptr %229, align 4, !tbaa !87
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %246, label %247

233:                                              ; preds = %220
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %201) #2
  %234 = icmp eq ptr %221, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %233
  %236 = load i32, ptr %197, align 8, !tbaa !84
  %237 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 10
  %238 = load i32, ptr %237, align 8, !tbaa !85
  %239 = and i32 %238, %236
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.EditBone, ptr %221, i64 0, i32 9
  %243 = load i32, ptr %242, align 4, !tbaa !87
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
  br i1 %250, label %251, label %200, !llvm.loop !89

251:                                              ; preds = %247, %193
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

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
  br i1 %259, label %267, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %262 = load i16, ptr %261, align 8, !tbaa !80
  %263 = icmp eq i16 %262, 25
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %266 = load ptr, ptr %265, align 8, !tbaa !81
  br label %267

267:                                              ; preds = %258, %260, %264
  %268 = phi ptr [ %266, %264 ], [ null, %260 ], [ null, %258 ]
  %269 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #2
  %270 = icmp eq ptr %268, null
  br i1 %270, label %600, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.bArmature, ptr %268, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !82
  %274 = icmp eq ptr %273, null
  br i1 %274, label %600, label %275

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
  %285 = load i32, ptr %279, align 8, !tbaa !84
  %286 = getelementptr inbounds %struct.EditBone, ptr %283, i64 0, i32 10
  %287 = load i32, ptr %286, align 8, !tbaa !85
  %288 = and i32 %287, %285
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %323, label %290

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.EditBone, ptr %283, i64 0, i32 9
  %292 = load i32, ptr %291, align 4, !tbaa !87
  %293 = and i32 %292, 1025
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %323

295:                                              ; preds = %290
  %296 = load i32, ptr %280, align 8, !tbaa !88
  %297 = and i32 %296, 256
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %272, align 8, !tbaa !82
  %301 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %300, ptr noundef nonnull %283) #2
  br label %302

302:                                              ; preds = %299, %295
  %303 = phi ptr [ %301, %299 ], [ %284, %295 ]
  br i1 %281, label %315, label %304

304:                                              ; preds = %302
  %305 = load i32, ptr %291, align 4, !tbaa !87
  %306 = and i32 %305, 524289
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %323

308:                                              ; preds = %304
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %268, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %283) #2
  %309 = icmp eq ptr %303, null
  br i1 %309, label %323, label %310

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.EditBone, ptr %303, i64 0, i32 9
  %312 = load i32, ptr %311, align 4, !tbaa !87
  %313 = and i32 %312, 1
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %322, label %323

315:                                              ; preds = %302
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %268, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %283) #2
  %316 = icmp eq ptr %303, null
  br i1 %316, label %323, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.EditBone, ptr %303, i64 0, i32 9
  %319 = load i32, ptr %318, align 4, !tbaa !87
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
  br i1 %326, label %327, label %282, !llvm.loop !90

327:                                              ; preds = %323, %275
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

328:                                              ; preds = %255
  %329 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #2
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %369, label %331

331:                                              ; preds = %328
  %332 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %333 = icmp eq ptr %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.Object, ptr %332, i64 0, i32 19
  %336 = load ptr, ptr %335, align 8, !tbaa !81
  br label %337

337:                                              ; preds = %331, %334
  %338 = phi ptr [ %336, %334 ], [ null, %331 ]
  br i1 %333, label %600, label %339

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.Object, ptr %332, i64 0, i32 18
  %341 = load ptr, ptr %340, align 8, !tbaa !91
  %342 = icmp ne ptr %341, null
  %343 = icmp ne ptr %338, null
  %344 = select i1 %342, i1 %343, i1 false
  br i1 %344, label %345, label %600

345:                                              ; preds = %339
  %346 = load ptr, ptr %341, align 8, !tbaa !68
  %347 = icmp eq ptr %346, null
  br i1 %347, label %368, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.bArmature, ptr %338, i64 0, i32 15
  br label %350

350:                                              ; preds = %348, %365
  %351 = phi ptr [ %346, %348 ], [ %366, %365 ]
  %352 = getelementptr inbounds %struct.bPoseChannel, ptr %351, i64 0, i32 12
  %353 = load ptr, ptr %352, align 8, !tbaa !92
  %354 = getelementptr inbounds %struct.Bone, ptr %353, i64 0, i32 25
  %355 = load i32, ptr %354, align 8, !tbaa !94
  %356 = load i32, ptr %349, align 8, !tbaa !84
  %357 = and i32 %356, %355
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %350
  %360 = getelementptr inbounds %struct.Bone, ptr %353, i64 0, i32 10
  %361 = load i32, ptr %360, align 8, !tbaa !96
  %362 = and i32 %361, 64
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %332, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %351) #2
  br label %365

365:                                              ; preds = %359, %364, %350
  %366 = load ptr, ptr %351, align 8, !tbaa !68
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %350, !llvm.loop !97

368:                                              ; preds = %365, %345
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

369:                                              ; preds = %328
  %370 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.14) #2
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %410, label %372

372:                                              ; preds = %369
  %373 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %374 = icmp eq ptr %373, null
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.Object, ptr %373, i64 0, i32 19
  %377 = load ptr, ptr %376, align 8, !tbaa !81
  br label %378

378:                                              ; preds = %372, %375
  %379 = phi ptr [ %377, %375 ], [ null, %372 ]
  br i1 %374, label %600, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.Object, ptr %373, i64 0, i32 18
  %382 = load ptr, ptr %381, align 8, !tbaa !91
  %383 = icmp ne ptr %382, null
  %384 = icmp ne ptr %379, null
  %385 = select i1 %383, i1 %384, i1 false
  br i1 %385, label %386, label %600

386:                                              ; preds = %380
  %387 = load ptr, ptr %382, align 8, !tbaa !68
  %388 = icmp eq ptr %387, null
  br i1 %388, label %409, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct.bArmature, ptr %379, i64 0, i32 15
  br label %391

391:                                              ; preds = %389, %406
  %392 = phi ptr [ %387, %389 ], [ %407, %406 ]
  %393 = getelementptr inbounds %struct.bPoseChannel, ptr %392, i64 0, i32 12
  %394 = load ptr, ptr %393, align 8, !tbaa !92
  %395 = getelementptr inbounds %struct.Bone, ptr %394, i64 0, i32 25
  %396 = load i32, ptr %395, align 8, !tbaa !94
  %397 = load i32, ptr %390, align 8, !tbaa !84
  %398 = and i32 %397, %396
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %391
  %401 = getelementptr inbounds %struct.Bone, ptr %394, i64 0, i32 10
  %402 = load i32, ptr %401, align 8, !tbaa !96
  %403 = and i32 %402, 65
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef nonnull %373, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %392) #2
  br label %406

406:                                              ; preds = %400, %405, %391
  %407 = load ptr, ptr %392, align 8, !tbaa !68
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %391, !llvm.loop !98

409:                                              ; preds = %406, %386
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

410:                                              ; preds = %369
  %411 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.15) #2
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %435, label %413

413:                                              ; preds = %410
  %414 = icmp eq ptr %18, null
  br i1 %414, label %600, label %415

415:                                              ; preds = %413
  %416 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %417 = load i16, ptr %416, align 8, !tbaa !80
  %418 = icmp eq i16 %417, 25
  br i1 %418, label %419, label %600

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %421 = load ptr, ptr %420, align 8, !tbaa !81
  %422 = getelementptr inbounds %struct.bArmature, ptr %421, i64 0, i32 4
  %423 = load ptr, ptr %422, align 8, !tbaa !82
  %424 = icmp eq ptr %423, null
  br i1 %424, label %430, label %425

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.bArmature, ptr %421, i64 0, i32 6
  %427 = load ptr, ptr %426, align 8, !tbaa !99
  %428 = icmp eq ptr %427, null
  br i1 %428, label %600, label %429

429:                                              ; preds = %425
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %421, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %427) #2
  br label %600

430:                                              ; preds = %419
  %431 = getelementptr inbounds %struct.bArmature, ptr %421, i64 0, i32 5
  %432 = load ptr, ptr %431, align 8, !tbaa !100
  %433 = icmp eq ptr %432, null
  br i1 %433, label %600, label %434

434:                                              ; preds = %430
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %421, ptr noundef nonnull @RNA_Bone, ptr noundef nonnull %432) #2
  br label %600

435:                                              ; preds = %410
  %436 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.16) #2
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %443, label %438

438:                                              ; preds = %435
  %439 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %18) #2
  %440 = tail call ptr @BKE_pose_channel_active(ptr noundef %439) #2
  %441 = icmp eq ptr %440, null
  br i1 %441, label %600, label %442

442:                                              ; preds = %438
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %439, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %440) #2
  br label %600

443:                                              ; preds = %435
  %444 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.17) #2
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %443
  br i1 %13, label %600, label %447

447:                                              ; preds = %446
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %12) #2
  br label %600

448:                                              ; preds = %443
  %449 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.18) #2
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = icmp eq ptr %18, null
  br i1 %452, label %600, label %453

453:                                              ; preds = %451
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %600

454:                                              ; preds = %448
  %455 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.19) #2
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %454
  %458 = icmp eq ptr %18, null
  br i1 %458, label %600, label %459

459:                                              ; preds = %457
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %18) #2
  br label %600

460:                                              ; preds = %454
  %461 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.20) #2
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  %464 = icmp eq ptr %10, null
  br i1 %464, label %600, label %465

465:                                              ; preds = %463
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %10) #2
  br label %600

466:                                              ; preds = %460
  %467 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.21) #2
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %477, label %469

469:                                              ; preds = %466
  %470 = icmp eq ptr %18, null
  br i1 %470, label %600, label %471

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %473 = load i32, ptr %472, align 8, !tbaa !101
  %474 = and i32 %473, 2
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %600, label %476

476:                                              ; preds = %471
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %18) #2
  br label %600

477:                                              ; preds = %466
  %478 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.22) #2
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %477
  %481 = icmp eq ptr %18, null
  br i1 %481, label %600, label %482

482:                                              ; preds = %480
  %483 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %484 = load i32, ptr %483, align 8, !tbaa !101
  %485 = and i32 %484, 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %600, label %487

487:                                              ; preds = %482
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %18) #2
  br label %600

488:                                              ; preds = %477
  %489 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.23) #2
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %499, label %491

491:                                              ; preds = %488
  %492 = icmp eq ptr %18, null
  br i1 %492, label %600, label %493

493:                                              ; preds = %491
  %494 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %495 = load i32, ptr %494, align 8, !tbaa !101
  %496 = and i32 %495, 8
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %600, label %498

498:                                              ; preds = %493
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %18) #2
  br label %600

499:                                              ; preds = %488
  %500 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.24) #2
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %510, label %502

502:                                              ; preds = %499
  %503 = icmp eq ptr %18, null
  br i1 %503, label %600, label %504

504:                                              ; preds = %502
  %505 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %506 = load i32, ptr %505, align 8, !tbaa !101
  %507 = and i32 %506, 16
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %600, label %509

509:                                              ; preds = %504
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %18) #2
  br label %600

510:                                              ; preds = %499
  %511 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.25) #2
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %521, label %513

513:                                              ; preds = %510
  %514 = icmp eq ptr %18, null
  br i1 %514, label %600, label %515

515:                                              ; preds = %513
  %516 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 27
  %517 = load i32, ptr %516, align 8, !tbaa !101
  %518 = and i32 %517, 32
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %600, label %520

520:                                              ; preds = %515
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %18) #2
  br label %600

521:                                              ; preds = %510
  %522 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.26) #2
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %536, label %524

524:                                              ; preds = %521
  %525 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #2
  %526 = icmp eq ptr %525, null
  br i1 %526, label %600, label %527

527:                                              ; preds = %524
  %528 = load ptr, ptr %525, align 8, !tbaa !102
  %529 = load ptr, ptr %528, align 8, !tbaa !68
  %530 = icmp eq ptr %529, null
  br i1 %530, label %535, label %531

531:                                              ; preds = %527, %531
  %532 = phi ptr [ %533, %531 ], [ %529, %527 ]
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %532) #2
  %533 = load ptr, ptr %532, align 8, !tbaa !68
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %531, !llvm.loop !104

535:                                              ; preds = %531, %527
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

536:                                              ; preds = %521
  %537 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.27) #2
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %536
  %540 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #2
  %541 = icmp eq ptr %540, null
  br i1 %541, label %600, label %542

542:                                              ; preds = %539
  %543 = load ptr, ptr %540, align 8, !tbaa !102
  %544 = load ptr, ptr %543, align 8, !tbaa !68
  %545 = icmp eq ptr %544, null
  br i1 %545, label %556, label %546

546:                                              ; preds = %542, %553
  %547 = phi ptr [ %554, %553 ], [ %544, %542 ]
  %548 = getelementptr inbounds %struct.Sequence, ptr %547, i64 0, i32 5
  %549 = load i32, ptr %548, align 8, !tbaa !105
  %550 = and i32 %549, 1
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %553, label %552

552:                                              ; preds = %546
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %547) #2
  br label %553

553:                                              ; preds = %546, %552
  %554 = load ptr, ptr %547, align 8, !tbaa !68
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %546, !llvm.loop !107

556:                                              ; preds = %553, %542
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

557:                                              ; preds = %536
  %558 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.28) #2
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %578, label %560

560:                                              ; preds = %557
  %561 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #2
  %562 = icmp eq ptr %561, null
  br i1 %562, label %600, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr %561, align 8, !tbaa !102
  %565 = load ptr, ptr %564, align 8, !tbaa !68
  %566 = icmp eq ptr %565, null
  br i1 %566, label %577, label %567

567:                                              ; preds = %563, %574
  %568 = phi ptr [ %575, %574 ], [ %565, %563 ]
  %569 = getelementptr inbounds %struct.Sequence, ptr %568, i64 0, i32 5
  %570 = load i32, ptr %569, align 8, !tbaa !105
  %571 = and i32 %570, 16385
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %573, label %574

573:                                              ; preds = %567
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull %568) #2
  br label %574

574:                                              ; preds = %567, %573
  %575 = load ptr, ptr %568, align 8, !tbaa !68
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %567, !llvm.loop !108

577:                                              ; preds = %574, %563
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #2
  br label %600

578:                                              ; preds = %557
  %579 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.29) #2
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %600, label %581

581:                                              ; preds = %578
  %582 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #2
  %583 = icmp eq ptr %582, null
  br i1 %583, label %587, label %584

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct.SpaceFile, ptr %582, i64 0, i32 9
  %586 = load ptr, ptr %585, align 8, !tbaa !109
  br label %592

587:                                              ; preds = %581
  %588 = tail call ptr @uiContextActiveOperator(ptr noundef %0) #2
  %589 = icmp eq ptr %588, null
  br i1 %589, label %590, label %592

590:                                              ; preds = %587
  %591 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #2
  br label %592

592:                                              ; preds = %590, %587, %584
  %593 = phi ptr [ %586, %584 ], [ %588, %587 ], [ %591, %590 ]
  %594 = icmp eq ptr %593, null
  br i1 %594, label %600, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.wmOperator, ptr %593, i64 0, i32 7
  %597 = load ptr, ptr %596, align 8, !tbaa !111
  %598 = icmp eq ptr %597, null
  br i1 %598, label %600, label %599

599:                                              ; preds = %595
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_Operator, ptr noundef nonnull %593) #2
  br label %600

600:                                              ; preds = %415, %413, %185, %189, %267, %271, %337, %339, %378, %380, %425, %430, %592, %595, %438, %524, %539, %560, %577, %556, %535, %442, %429, %434, %578, %599, %513, %515, %520, %502, %504, %509, %491, %493, %498, %480, %482, %487, %469, %471, %476, %463, %465, %457, %459, %451, %453, %446, %447, %409, %368, %327, %251, %169, %126, %92, %59, %25, %21
  %601 = phi i32 [ 1, %21 ], [ 1, %25 ], [ 1, %59 ], [ 1, %92 ], [ 1, %126 ], [ 1, %169 ], [ 1, %442 ], [ 1, %535 ], [ 1, %556 ], [ 1, %577 ], [ 1, %251 ], [ 1, %327 ], [ 1, %368 ], [ 1, %409 ], [ 1, %447 ], [ 1, %446 ], [ 1, %453 ], [ 1, %451 ], [ 1, %459 ], [ 1, %457 ], [ 1, %465 ], [ 1, %463 ], [ 1, %476 ], [ 1, %471 ], [ 1, %469 ], [ 1, %487 ], [ 1, %482 ], [ 1, %480 ], [ 1, %498 ], [ 1, %493 ], [ 1, %491 ], [ 1, %509 ], [ 1, %504 ], [ 1, %502 ], [ 1, %520 ], [ 1, %515 ], [ 1, %513 ], [ 1, %599 ], [ 0, %578 ], [ 1, %434 ], [ 1, %429 ], [ -1, %560 ], [ -1, %539 ], [ -1, %524 ], [ -1, %438 ], [ -1, %595 ], [ -1, %592 ], [ -1, %430 ], [ -1, %425 ], [ -1, %380 ], [ -1, %378 ], [ -1, %339 ], [ -1, %337 ], [ -1, %271 ], [ -1, %267 ], [ -1, %189 ], [ -1, %185 ], [ -1, %413 ], [ -1, %415 ]
  ret i32 %601
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_id_list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare zeroext i8 @BKE_object_is_libdata(ptr noundef) local_unnamed_addr #1

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #1

declare ptr @uiContextActiveOperator(ptr noundef) local_unnamed_addr #1

declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #1

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
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !74, !75}
!77 = !{!67, !41, i64 24}
!78 = distinct !{!78, !74, !75}
!79 = distinct !{!79, !74, !75}
!80 = !{!70, !40, i64 136}
!81 = !{!70, !37, i64 296}
!82 = !{!83, !37, i64 160}
!83 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!84 = !{!83, !41, i64 216}
!85 = !{!86, !41, i64 136}
!86 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !47, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !40, i64 180}
!87 = !{!86, !41, i64 132}
!88 = !{!83, !41, i64 192}
!89 = distinct !{!89, !74, !75}
!90 = distinct !{!90, !74, !75}
!91 = !{!70, !37, i64 288}
!92 = !{!93, !37, i64 120}
!93 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !47, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !47, i64 524, !47, i64 528, !47, i64 532, !37, i64 536}
!94 = !{!95, !41, i64 320}
!95 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !47, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!96 = !{!95, !41, i64 176}
!97 = distinct !{!97, !74, !75}
!98 = distinct !{!98, !74, !75}
!99 = !{!83, !37, i64 176}
!100 = !{!83, !37, i64 168}
!101 = !{!70, !41, i64 432}
!102 = !{!103, !37, i64 0}
!103 = !{!"Editing", !37, i64 0, !42, i64 8, !42, i64 24, !37, i64 40, !38, i64 48, !38, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !52, i64 2112}
!104 = distinct !{!104, !74, !75}
!105 = !{!106, !41, i64 96}
!106 = !{!"Sequence", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !47, i64 224, !47, i64 228, !37, i64 232, !37, i64 240, !37, i64 248, !42, i64 256, !37, i64 272, !37, i64 280, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !37, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !47, i64 324, !41, i64 328, !38, i64 332, !38, i64 333, !42, i64 336}
!107 = distinct !{!107, !74, !75}
!108 = distinct !{!108, !74, !75}
!109 = !{!110, !37, i64 72}
!110 = !{!"SpaceFile", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!111 = !{!112, !37, i64 112}
!112 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
